.class public Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
.super Lcom/android/systemui/SystemUI;
.source "OpBiometricDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$Callback;,
        Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FpViewHandler;,
        Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field public static final SHOW_TRANSPARENT_ICON_VIEW:Z

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private IS_SUPPORT_QL:Z

.field private mAuthenticatedPkg:Ljava/lang/String;

.field private mAuthenticatedSuccess:Z

.field private mCallback:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$Callback;

.field private mCheckTransparentView:Ljava/lang/Runnable;

.field protected mCurrentAuthType:I

.field private mCustHideCutout:Z

.field private mFingerOnSensor:Z

.field private mFingerOnView:Z

.field private final mFingerprintClientActiveCallback:Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

.field protected mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

.field private mFpSensorPressing:Z

.field private mFpViewHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FpViewHandler;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs2KDisplay:Z

.field private mIsEnableQL:Z

.field private mIsFaceUnlocked:Z

.field private mIsSupportResolutionSwitch:Z

.field private mLastOwnerString:Ljava/lang/String;

.field private mOnViewPressing:Z

.field private mQLConfig:Ljava/lang/String;

.field private final mQLConfigObserver:Landroid/database/ContentObserver;

.field private final mQLEnableObserver:Landroid/database/ContentObserver;

.field private mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

.field private mQLShowing:Z

.field private mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

.field private mShowQLView:Ljava/lang/Runnable;

.field private mTransparentIconShowing:Z

.field private mTransparentIconSize:I

.field private mTransparentIconView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    const-string v0, "debug.show_transparent_icon_view"

    const/4 v1, 0x0

    .line 88
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->SHOW_TRANSPARENT_ICON_VIEW:Z

    .line 1093
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 1094
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 1095
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1096
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIs2KDisplay:Z

    .line 103
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    .line 114
    new-instance v1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$Callback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$Callback;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1;)V

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCallback:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$Callback;

    .line 118
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->IS_SUPPORT_QL:Z

    .line 119
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsEnableQL:Z

    .line 120
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLShowing:Z

    .line 122
    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLConfig:Ljava/lang/String;

    .line 123
    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedPkg:Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mLastOwnerString:Ljava/lang/String;

    .line 125
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnView:Z

    .line 126
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnSensor:Z

    .line 135
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    .line 138
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCurrentAuthType:I

    .line 188
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$2;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerprintClientActiveCallback:Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    .line 966
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$4;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$4;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLEnableObserver:Landroid/database/ContentObserver;

    .line 975
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$5;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$5;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLConfigObserver:Landroid/database/ContentObserver;

    .line 988
    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpBiometricDialogImpl$rMSw7pn1eOUoX_LlUApXq0nJIOE;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpBiometricDialogImpl$rMSw7pn1eOUoX_LlUApXq0nJIOE;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCheckTransparentView:Ljava/lang/Runnable;

    .line 1008
    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpBiometricDialogImpl$Rtt2SCCJMecv99Pt6jSxPrwMjPo;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpBiometricDialogImpl$Rtt2SCCJMecv99Pt6jSxPrwMjPo;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;II)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleFingerprintAcquire(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Lcom/oneplus/systemui/biometrics/OpQLRootView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideQLView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mLastOwnerString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mLastOwnerString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnView:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnView:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedSuccess:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->showQL()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleFingerprintEnroll()V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFpSensorPressing:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mOnViewPressing:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Landroid/view/View;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Landroid/view/WindowManager;
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsEnableQL:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsEnableQL:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLConfig:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLConfig:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleFingerprintAuthenticatedFail()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Z)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleUpdateTransparentIconLayoutParams(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleUpdateTransparentIconVisibility(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleResetState()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleOnFaceUnlocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isQLEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLShowing:Z

    return p0
.end method

.method private getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;
    .locals 2

    .line 1142
    const-class v0, Lcom/android/systemui/biometrics/BiometricDialogImpl;

    const-string v1, "mHandler"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    return-object p0
.end method

.method private getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 744
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconSize:I

    const/16 v3, 0x901

    const v4, 0x1000108

    const/4 v5, -0x3

    move-object v0, v6

    move v1, v2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 752
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v0, "FingerprintTransparentIcon"

    .line 753
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x31

    .line 754
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x0

    .line 756
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v0, 0x1

    .line 757
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 759
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result v0

    .line 760
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    sget v2, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_ss_location_y:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 763
    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsSupportResolutionSwitch:Z

    if-eqz v1, :cond_3

    .line 764
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_ss_location_y:I

    goto :goto_1

    .line 765
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIs2KDisplay:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y_2k:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y_1080p:I

    .line 764
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 767
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_4

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_ss_location_y:I

    goto :goto_2

    :cond_4
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 772
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 773
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->getCutoutPathdataHeight(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_5
    return-object v6
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .line 1159
    const-class v0, Lcom/android/systemui/biometrics/BiometricDialogImpl;

    const-string v1, "mWindowManager"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method private handleFingerprintAcquire(II)V
    .locals 7

    .line 846
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 847
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isPendingHideDialog()Z

    move-result v1

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFingerprintAcquire: acquireInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", onViewPressing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mOnViewPressing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", SensorPressing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFpSensorPressing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", vendorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", interactive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", IconShow = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", dialogShowing = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pendingHideDialog = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpBiometricDialogImpl"

    .line 849
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-ne p1, v3, :cond_2

    if-nez p2, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v4

    .line 860
    :goto_0
    iput-boolean v5, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnSensor:Z

    .line 861
    sget-boolean v5, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFingerprintAcquire mFingerOnSensor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnSensor:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mFingerOnView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnView:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnSensor:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnView:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    if-eqz v2, :cond_2

    .line 864
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v2, v5}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 865
    iput-boolean v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    :cond_2
    if-ne p1, v3, :cond_3

    if-nez p2, :cond_3

    .line 871
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->removeTimeOutMessage()V

    :cond_3
    if-ne p1, v3, :cond_4

    if-nez p2, :cond_4

    .line 874
    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mOnViewPressing:Z

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 875
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFpSensorPressing:Z

    .line 876
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->showFingerprintPressed()V

    goto :goto_1

    :cond_4
    if-ne p1, v3, :cond_6

    if-ne p2, v0, :cond_6

    .line 877
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mOnViewPressing:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFpSensorPressing:Z

    if-eqz p1, :cond_6

    .line 879
    invoke-virtual {p0, v4}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 880
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 881
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 882
    iput-boolean v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    .line 885
    :cond_5
    iput-boolean v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFpSensorPressing:Z

    if-nez v1, :cond_6

    .line 889
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->hideFingerprintPressed()V

    :cond_6
    :goto_1
    return-void
.end method

.method private handleFingerprintAuthenticatedFail()V
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-nez v0, :cond_0

    const-string p0, "OpBiometricDialogImpl"

    const-string v0, "handleFingerprintAuthenticatedFail mFodDialogView doesn\'t init yet"

    .line 908
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 912
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->notifyFpResultEvent()V

    const/4 v0, 0x0

    .line 914
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    return-void
.end method

.method private handleFingerprintEnroll()V
    .locals 1

    .line 897
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-nez p0, :cond_0

    const-string p0, "OpBiometricDialogImpl"

    const-string v0, "handleFingerprintEnroll mFodDialogView doesn\'t init yet"

    .line 898
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 902
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->notifyFpResultEvent()V

    return-void
.end method

.method private handleOnFaceUnlocked()V
    .locals 2

    const/4 v0, 0x1

    .line 1126
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    .line 1127
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFaceUnlocked mIsEnableQL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsEnableQL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mTransparentIconShowing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsEnableQL:Z

    if-eqz v0, :cond_2

    .line 1129
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    if-eqz v0, :cond_1

    .line 1130
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1131
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    .line 1134
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    if-eqz v0, :cond_2

    .line 1135
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideQLView()V

    :cond_2
    return-void
.end method

.method private handleResetState()V
    .locals 2

    const/4 v0, 0x0

    .line 734
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFpSensorPressing:Z

    .line 735
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mOnViewPressing:Z

    .line 737
    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnView:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    :cond_0
    return-void
.end method

.method private handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V
    .locals 7

    .line 1148
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCheckTransparentView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1150
    const-class v0, Lcom/android/systemui/biometrics/BiometricDialogImpl;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/android/internal/os/SomeArgs;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Landroid/os/Bundle;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "handleShowDialog"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 1151
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object p3, v1, v6

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private handleUpdateTransparentIconLayoutParams(Z)V
    .locals 3

    .line 789
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 792
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTransparentIconLayoutParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 796
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 797
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p1, 0x0

    .line 798
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 p1, 0x1

    .line 799
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_3

    .line 801
    :cond_1
    iget p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconSize:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 802
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 804
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result p1

    .line 807
    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsSupportResolutionSwitch:Z

    if-eqz v2, :cond_4

    .line 808
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_2

    sget p1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_ss_location_y:I

    goto :goto_0

    .line 809
    :cond_2
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIs2KDisplay:Z

    if-eqz p1, :cond_3

    sget p1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y_2k:I

    goto :goto_0

    :cond_3
    sget p1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y_1080p:I

    .line 808
    :goto_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    .line 811
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_5

    sget p1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_ss_location_y:I

    goto :goto_1

    :cond_5
    sget p1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y:I

    :goto_1
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 816
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 817
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->getCutoutPathdataHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 821
    :cond_6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 824
    :goto_3
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private handleUpdateTransparentIconVisibility(I)V
    .locals 2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 837
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mOnViewPressing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFpSensorPressing:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "OpBiometricDialogImpl"

    const-string v1, "handleUpdateTransparentIconVisibility"

    .line 839
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hideQLView()V
    .locals 4

    .line 1048
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickLaunch"

    const-string v1, "hideQLView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1052
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCheckTransparentView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1055
    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpBiometricDialogImpl$P8xghpy_0Xq0cBcInww4pxVKewQ;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpBiometricDialogImpl$P8xghpy_0Xq0cBcInww4pxVKewQ;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    .line 1066
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1067
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1069
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1072
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 1073
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_2
    return-void
.end method

.method private isDialogShowing()Z
    .locals 0

    .line 1155
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isDialogShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.android.systemui"

    .line 636
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

.method private isQLEnabled()Z
    .locals 1

    .line 1079
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->IS_SUPPORT_QL:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsEnableQL:Z

    if-eqz p0, :cond_0

    .line 1081
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showQL()V
    .locals 3

    .line 617
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 621
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mLastOwnerString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 627
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 629
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 630
    sget-boolean p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "QuickLaunch"

    const-string v0, "postDelayed mShowQLView"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private vibrate(I)V
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1102
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportLinearVibration()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1103
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p1}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z

    goto :goto_0

    .line 1105
    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportZVibrationMotor()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 1106
    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    .line 1107
    sget-object p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    .line 1109
    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    .line 1110
    sget-object p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public forceShowFodDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V
    .locals 2

    .line 434
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 438
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 439
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 440
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 441
    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    return-void
.end method

.method protected handleQLTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 555
    sget-boolean v1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    const-string v2, "QuickLaunch"

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_2

    .line 556
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mQLShowing "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLShowing:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mQLRootView "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " attach "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isQLEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v3, :cond_3

    if-ne v0, v1, :cond_5

    .line 563
    :cond_3
    sget-boolean v4, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "removeCallbacks mShowQLView"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 567
    :cond_5
    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLShowing:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    if-eqz v2, :cond_8

    .line 568
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    invoke-virtual {v2, p1}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->onTouch(Landroid/view/MotionEvent;)V

    :cond_6
    if-eq v0, v3, :cond_7

    if-ne v0, v1, :cond_8

    .line 571
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideQLView()V

    :cond_8
    return-void
.end method

.method public is2KDisplay()Z
    .locals 0

    .line 960
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIs2KDisplay:Z

    return p0
.end method

.method protected isSupportResolutionSwitch()Z
    .locals 0

    .line 1164
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsSupportResolutionSwitch:Z

    return p0
.end method

.method public synthetic lambda$hideQLView$2$OpBiometricDialogImpl()V
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    if-eqz v0, :cond_0

    .line 1057
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1059
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->onQLExit()V

    const/4 v0, 0x0

    .line 1061
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    :cond_0
    const/4 v0, 0x0

    .line 1063
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLShowing:Z

    return-void
.end method

.method public synthetic lambda$new$0$OpBiometricDialogImpl()V
    .locals 4

    .line 989
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 990
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLandscape = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mFingerOnView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnView:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mTransparentIconShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mQLShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpBiometricDialogImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 994
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnView:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLShowing:Z

    if-nez v0, :cond_1

    .line 995
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mOnViewPressing:Z

    .line 996
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnView:Z

    .line 997
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    .line 999
    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 1000
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1001
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1002
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$1$OpBiometricDialogImpl()V
    .locals 4

    .line 1010
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCheckTransparentView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1013
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isCurrentGuest(Landroid/content/Context;)Z

    move-result v0

    .line 1014
    sget-boolean v1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    const-string v2, "QuickLaunch"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShowQLView enable "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isQLEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isGuest "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isQLEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1016
    :cond_1
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShowQLView mQLShowing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mFingerOnView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLShowing:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnView:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x3ff

    .line 1020
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->vibrate(I)V

    .line 1024
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1025
    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    .line 1029
    :cond_3
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLShowing:Z

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$layout;->ql_root_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/biometrics/OpQLRootView;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    .line 1031
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLConfig:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    invoke-virtual {v2, v0}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->setQLConfig(Ljava/lang/String;)V

    .line 1032
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1033
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    new-instance v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$6;

    invoke-direct {v2, p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$6;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1042
    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onBiometricAuthenticated(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBiometricError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBiometricHelp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 721
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 5

    .line 921
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    const-string v1, "OpBiometricDialogImpl"

    if-eqz v0, :cond_0

    const-string v0, "onDensityOrFontScaleChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-nez v0, :cond_1

    const-string p0, "onDensityOrFontScaleChanged mFodDialogView doesn\'t init yet"

    .line 924
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 929
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIndicationTextSize()V

    .line 931
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsSupportResolutionSwitch:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v0, :cond_7

    .line 933
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 934
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "metrics.width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    const/16 v2, 0x5a0

    if-eqz v1, :cond_4

    .line 941
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIs2KDisplay:Z

    goto :goto_3

    .line 943
    :cond_4
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIs2KDisplay:Z

    .line 946
    :goto_3
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIs2KDisplay:Z

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateLayoutDimension(ZF)V

    .line 951
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 952
    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIs2KDisplay:Z

    if-eqz v1, :cond_6

    sget v1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_size_2k:I

    goto :goto_4

    :cond_6
    sget v1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_size_1080p:I

    .line 951
    :goto_4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconSize:I

    :cond_7
    return-void
.end method

.method public onFaceUnlocked()V
    .locals 2

    .line 1120
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1121
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFingerprintAcquired(II)V
    .locals 2

    .line 461
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFingerprintAcquired: acquireInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object p0

    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFingerprintAuthenticatedFail()V
    .locals 2

    .line 473
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpBiometricDialogImpl"

    const-string v1, "onFingerprintAuthenticatedFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object p0

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFingerprintEnrollResult()V
    .locals 2

    .line 467
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpBiometricDialogImpl"

    const-string v1, "onFingerprintEnroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object p0

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 7

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOverlayChanged be trigger in OpBiometricDialogImpl, mCustHideCutout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCustHideCutout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", OpUtils.isCutoutHide(mContext):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCustHideCutout:Z

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v2

    if-eq v0, v2, :cond_5

    .line 1172
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCustHideCutout:Z

    .line 1174
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1175
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1176
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    const/16 v3, 0x5a0

    if-eqz v2, :cond_2

    .line 1178
    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v6, v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIs2KDisplay:Z

    goto :goto_3

    .line 1180
    :cond_2
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v6, v3, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIs2KDisplay:Z

    .line 1182
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOverlayChanged, metrics.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", metrics.height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isLandscape = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is2KDisplay = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIs2KDisplay:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v1, :cond_4

    .line 1186
    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIs2KDisplay:Z

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateLayoutDimension(ZF)V

    .line 1189
    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    if-eqz v0, :cond_5

    .line 1190
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    :cond_5
    return-void
.end method

.method protected opHandleBiometricAuthenticated(Z)V
    .locals 2

    .line 580
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    .line 585
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 586
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->notifyFingerprintAuthenticated()V

    goto :goto_0

    .line 589
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideBiometricDialog()V

    .line 592
    :goto_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 593
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedSuccess:Z

    const/4 p1, 0x0

    .line 594
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 600
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isQLEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 601
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->showQL()V

    .line 605
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCheckTransparentView:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 606
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCheckTransparentView:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 607
    sget-boolean p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "QuickLaunch"

    const-string p1, "postDelayed mCheckerTransparentView"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method protected opHandleBiometricError(Ljava/lang/String;)V
    .locals 0

    .line 640
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p1, :cond_0

    .line 641
    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->notifyFpResultEvent()V

    .line 642
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resetState()V

    const/4 p1, 0x0

    .line 644
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    :cond_0
    return-void
.end method

.method protected opHandleHideFodDialog(Z)V
    .locals 4

    .line 651
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    const-string v1, "OpBiometricDialogImpl"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opHandleHideFodDialog, isDialogShowing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userCanceled "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 655
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dialog already dismissed, userCanceled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->notifyFpResultEvent()V

    .line 663
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v2

    if-nez v2, :cond_4

    .line 666
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintAlreadyAuthenticated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 668
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 670
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v0

    if-nez v0, :cond_4

    .line 674
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 675
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 676
    :cond_2
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string p0, "handleHideDialog: don\'t hide window since keyguard is showing"

    .line 678
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 683
    :cond_4
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isPendingHideDialog()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "handleHideDialog: don\'t hide window since padding hide dialog until animation end"

    .line 684
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz p1, :cond_6

    .line 691
    :try_start_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    if-eqz p1, :cond_6

    .line 692
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RemoteException when hiding dialog"

    .line 695
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    const/4 p1, 0x0

    .line 698
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 699
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDialogShowing(Z)V

    .line 700
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedSuccess:Z

    invoke-virtual {p1, v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->startDismiss(Z)V

    .line 701
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opHandleHide, "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mOnViewPressing:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFpSensorPressing:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnSensor:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mOnViewPressing:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFpSensorPressing:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerOnSensor:Z

    if-nez p1, :cond_7

    .line 705
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 706
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    .line 708
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 711
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCheckTransparentView:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 713
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const-string p0, "remove transparent Icon"

    .line 714
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method protected opHandleShowDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 4

    .line 480
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const-string v1, "OpBiometricDialogImpl"

    if-nez v0, :cond_0

    const-string p0, "opHandleShowDialog mFodDialogView doesn\'t init yet"

    .line 481
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 486
    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "key_fingerprint_package_name"

    const-string v3, ""

    .line 487
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opHandleShowDialog authenticatedPkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 490
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedPkg:Ljava/lang/String;

    .line 491
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "forceShow-keyguard"

    .line 492
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "opHandleShowDialog: don\'t try to show window since there is no client authenticating "

    .line 493
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 498
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedPkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 499
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedPkg:Ljava/lang/String;

    .line 503
    :cond_2
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 504
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v2, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setOwnerString(Ljava/lang/String;)V

    .line 507
    :cond_3
    sget-boolean v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShowDialog, isAnimatingAway: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .line 508
    invoke-virtual {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isAnimatingAway()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_4
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isAnimatingAway()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 511
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->forceRemove()V

    goto :goto_0

    .line 512
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p1, "Dialog already showing"

    .line 513
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1, v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    .line 515
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    return-void

    .line 519
    :cond_6
    :goto_0
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 522
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setOwnerString(Ljava/lang/String;)V

    .line 523
    iput-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mOnViewPressing:Z

    .line 524
    iput-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFpSensorPressing:Z

    .line 527
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->addToWindow()V

    .line 528
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setPressDimWindow(Z)V

    .line 531
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsSupportResolutionSwitch:Z

    if-eqz p1, :cond_8

    .line 532
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 533
    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIs2KDisplay:Z

    if-eqz v1, :cond_7

    sget v1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_size_2k:I

    goto :goto_1

    :cond_7
    sget v1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_size_1080p:I

    .line 532
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconSize:I

    goto :goto_2

    .line 535
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconSize:I

    .line 538
    :goto_2
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    if-nez p1, :cond_9

    .line 539
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconShowing:Z

    .line 540
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 542
    :cond_9
    invoke-virtual {p0, v3}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 546
    :goto_3
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDialogShowing(Z)V

    .line 547
    iput-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedSuccess:Z

    return-void
.end method

.method public resetState()V
    .locals 2

    .line 728
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 729
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1089
    :goto_0
    sget-boolean p2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setImeWindowStatus imeShown "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpBiometricDialogImpl"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onImeShow(Z)V

    return-void
.end method

.method public showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 7

    const-string v0, "fingerprint"

    .line 267
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    if-eqz v0, :cond_0

    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerprintClientActiveCallback:Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v0, v2}, Landroid/hardware/fingerprint/IFingerprintService;->addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "addClientActiveCallback: "

    .line 272
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const-string v0, " start"

    .line 277
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v2, -0x8

    const-string v3, "FingerprintDialogUI"

    invoke-direct {v0, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 281
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 282
    new-instance v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FpViewHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FpViewHandler;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFpViewHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FpViewHandler;

    .line 283
    new-instance v2, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCallback:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$Callback;

    .line 284
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v3, p0, v4, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;-><init>(Landroid/content/Context;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Lcom/android/systemui/biometrics/DialogViewCallback;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .line 287
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$layout;->op_fingerprint_icon:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Landroid/view/View;

    new-instance v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;

    invoke-direct {v2, p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 376
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->SHOW_TRANSPARENT_ICON_VIEW:Z

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Landroid/view/View;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 378
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Landroid/view/View;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 383
    :cond_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportQuickLaunch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->IS_SUPPORT_QL:Z

    .line 384
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->IS_SUPPORT_QL:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "op_quickpay_enable"

    .line 387
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLEnableObserver:Landroid/database/ContentObserver;

    const/4 v6, -0x1

    .line 386
    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 391
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "op_quick_launch_apps"

    .line 393
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLConfigObserver:Landroid/database/ContentObserver;

    .line 392
    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 397
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PHONE_STATE"

    .line 398
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.deskclock.ALARM_ALERT"

    .line 399
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsSupportResolutionSwitch:Z

    .line 406
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 410
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 411
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "metrics.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x5a0

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIs2KDisplay:Z

    .line 419
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCustHideCutout:Z

    return-void
.end method

.method public updateTransparentIconLayoutParams(Z)V
    .locals 2

    .line 781
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 782
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 783
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 784
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateTransparentIconVisibility(I)V
    .locals 2

    .line 829
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 830
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 831
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 832
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
