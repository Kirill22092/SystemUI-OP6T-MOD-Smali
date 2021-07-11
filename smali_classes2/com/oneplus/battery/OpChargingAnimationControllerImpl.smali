.class public Lcom/oneplus/battery/OpChargingAnimationControllerImpl;
.super Ljava/lang/Object;
.source "OpChargingAnimationControllerImpl.java"

# interfaces
.implements Lcom/oneplus/battery/OpChargingAnimationController;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;
    }
.end annotation


# static fields
.field private static mPreventModeNoBackground:Z = false


# instance fields
.field private TAG:Ljava/lang/String;

.field private isKeyguardShowing:Z

.field private mAnimationStarted:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryStatus:Lcom/oneplus/battery/OpBatteryStatus;

.field private mBouncerShow:Z

.field private mCacheFastChargeType:I

.field private mCacheWirelessWarpChargeType:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mChargingSound:Landroid/media/SoundPool;

.field private mChargingSoundId:I

.field private mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mContext:Landroid/content/Context;

.field protected mDockOnWireless:Z

.field private mDockOnWirelessObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardOn:Z

.field private mKeyguardStateCallback:Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;

.field private mOldChargingType:I

.field private mOldPluggedInAndCharging:Z

.field private mOpCBWarpChargingView:Lcom/oneplus/battery/OpCBWarpChargingView;

.field private mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

.field private mOpSWarpChargingView:Lcom/oneplus/battery/OpSWarpChargingView;

.field private mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

.field private mPluggedButNotUsb:Z

.field private mPreventViewShow:Z

.field private final mRefreshBatteryInfo:Ljava/lang/Runnable;

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mShouldPlayChargeSound:Z

.field private mSmallestWidth:I

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWarpFastCharging:Z

.field private mWirelessWarpCharging:Z

.field private mWrapChargingLayout:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OpChargingAnimationControllerImpl"

    .line 71
    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWarpFastCharging:Z

    .line 84
    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBouncerShow:Z

    .line 85
    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    .line 95
    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPluggedButNotUsb:Z

    .line 96
    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mKeyguardOn:Z

    .line 101
    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWirelessWarpCharging:Z

    .line 113
    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOldPluggedInAndCharging:Z

    const/4 v1, -0x1

    .line 118
    iput v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOldChargingType:I

    .line 136
    iput v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCacheFastChargeType:I

    .line 143
    new-instance v1, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$1;-><init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    .line 157
    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isKeyguardShowing:Z

    .line 718
    new-instance v1, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;-><init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V

    iput-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 998
    new-instance v1, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$Rd40fvDNGOg-j7g-6AL7TtU1fGI;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$Rd40fvDNGOg-j7g-6AL7TtU1fGI;-><init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V

    iput-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mRefreshBatteryInfo:Ljava/lang/Runnable;

    .line 1001
    new-instance v1, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;-><init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V

    iput-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    const/4 v1, 0x0

    .line 1132
    iput-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mDockOnWirelessObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    .line 1133
    iput-boolean v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mDockOnWireless:Z

    .line 162
    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    .line 163
    const-class p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 164
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "OpChargingAnimationControllerImpl init"

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-class p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 168
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 169
    new-instance p1, Landroid/media/SoundPool;

    invoke-direct {p1, v2, v2, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mChargingSound:Landroid/media/SoundPool;

    .line 170
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$raw;->charging:I

    invoke-virtual {p1, v0, v3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mChargingSoundId:I

    .line 173
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_WARP_CHARGING:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V1:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V2:Z

    if-eqz p1, :cond_1

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->registerReceiver()V

    .line 180
    :cond_1
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 181
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 185
    new-instance p1, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;

    invoke-direct {p1, p0, v1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;-><init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Lcom/oneplus/battery/OpChargingAnimationControllerImpl$1;)V

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mKeyguardStateCallback:Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;

    .line 189
    invoke-virtual {p0, v2}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->registerDockOnWirelessObserver(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->releaseAnimationResource()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBouncerShow:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBouncerShow:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Lcom/oneplus/battery/OpBatteryStatus;)Lcom/oneplus/battery/OpBatteryStatus;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBatteryStatus:Lcom/oneplus/battery/OpBatteryStatus;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOldChargingType:I

    return p0
.end method

.method static synthetic access$1502(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOldChargingType:I

    return p1
.end method

.method static synthetic access$1600(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mShouldPlayChargeSound:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mShouldPlayChargeSound:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/android/systemui/keyguard/ScreenLifecycle;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOldPluggedInAndCharging:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOldPluggedInAndCharging:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->resetChargingState()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mRefreshBatteryInfo:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mKeyguardOn:Z

    return p0
.end method

.method static synthetic access$402(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mKeyguardOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPluggedButNotUsb:Z

    return p0
.end method

.method static synthetic access$502(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPluggedButNotUsb:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->prepareAnimationResource()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpCBWarpChargingView:Lcom/oneplus/battery/OpCBWarpChargingView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpSWarpChargingView:Lcom/oneplus/battery/OpSWarpChargingView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    return-object p0
.end method

.method private genOpCBWarpChargingView()Lcom/oneplus/battery/OpCBWarpChargingView;
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "genOpCBWarpChargingView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpCBWarpChargingView:Lcom/oneplus/battery/OpCBWarpChargingView;

    if-eqz v0, :cond_1

    .line 592
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mOpCBWarpChargingView != null / mOpCBWarpChargingView.getParent():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpCBWarpChargingView:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpCBWarpChargingView:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpCBWarpChargingView:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->op_cb_warp_charging_animation_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/battery/OpCBWarpChargingView;

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpCBWarpChargingView:Lcom/oneplus/battery/OpCBWarpChargingView;

    return-object v0
.end method

.method private genOpNewWarpChargingView()Lcom/oneplus/battery/OpNewWarpChargingView;
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "genOpNewWarpChargingView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    if-eqz v0, :cond_1

    .line 568
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mOpNewWarpChargingView != null / mOpNewWarpChargingView.getParent():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->op_warp_charging_animation_view_new:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/battery/OpNewWarpChargingView;

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    return-object v0
.end method

.method private genOpSWarpChargingView()Lcom/oneplus/battery/OpSWarpChargingView;
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "genOpSWarpChargingView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpSWarpChargingView:Lcom/oneplus/battery/OpSWarpChargingView;

    if-eqz v0, :cond_1

    .line 580
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mOpSWarpChargingView != null / mOpSWarpChargingView.getParent():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpSWarpChargingView:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpSWarpChargingView:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpSWarpChargingView:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->op_swarp_charging_animation_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/battery/OpSWarpChargingView;

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpSWarpChargingView:Lcom/oneplus/battery/OpSWarpChargingView;

    return-object v0
.end method

.method private genOpWarpChargingView()Lcom/oneplus/battery/OpWarpChargingView;
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "genOpWarpChargingView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    if-eqz v0, :cond_1

    .line 555
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mOpWarpChargingView != null / mOpWarpChargingView.getParent():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->op_warp_charging_animation_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/battery/OpWarpChargingView;

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    return-object v0
.end method

.method private initOPWarpCharging()V
    .locals 2

    .line 602
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->wrap_charging_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWrapChargingLayout:Landroid/widget/FrameLayout;

    .line 608
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportREDCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWrapChargingLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpCBWarpChargingView:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 611
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpCBWarpChargingView:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-virtual {v0, p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->setChargingAnimationController(Lcom/oneplus/battery/OpChargingAnimationController;)V

    goto :goto_0

    .line 612
    :cond_0
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V2:Z

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWrapChargingLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpSWarpChargingView:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 614
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpSWarpChargingView:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-virtual {v0, p0}, Lcom/oneplus/battery/OpSWarpChargingView;->setChargingAnimationController(Lcom/oneplus/battery/OpChargingAnimationController;)V

    goto :goto_0

    .line 615
    :cond_1
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V1:Z

    if-eqz v0, :cond_2

    .line 618
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWrapChargingLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 619
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-virtual {v0, p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->setChargingAnimationController(Lcom/oneplus/battery/OpChargingAnimationController;)V

    goto :goto_0

    .line 622
    :cond_2
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWrapChargingLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 623
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v0, p0}, Lcom/oneplus/battery/OpWarpChargingView;->setChargingAnimationController(Lcom/oneplus/battery/OpChargingAnimationController;)V

    .line 628
    :goto_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method static synthetic lambda$animationEnd$1(ILcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 0

    .line 525
    invoke-interface {p1, p0}, Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;->onWarpCharingAnimationEnd(I)V

    return-void
.end method

.method static synthetic lambda$animationStart$0(ILcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 0

    .line 510
    invoke-interface {p1, p0}, Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;->onWarpCharingAnimationStart(I)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBatteryStatus:Lcom/oneplus/battery/OpBatteryStatus;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/oneplus/battery/OpBatteryStatus;)V

    return-void
.end method

.method private prepareAnimationResource()V
    .locals 0

    .line 538
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    if-eqz p0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->prepareAsset()V

    :cond_0
    return-void
.end method

.method private releaseAnimationResource()V
    .locals 3

    .line 544
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e8

    .line 545
    iput v1, v0, Landroid/os/Message;->what:I

    .line 546
    iget-object v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 547
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private resetChargingState()V
    .locals 2

    const/4 v0, -0x1

    .line 634
    iput v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCacheFastChargeType:I

    const/4 v1, 0x0

    .line 635
    iput-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCacheWirelessWarpChargeType:Z

    .line 636
    iput-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOldPluggedInAndCharging:Z

    .line 638
    iput v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOldChargingType:I

    return-void
.end method

.method private updateScrim()V
    .locals 4

    .line 470
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 476
    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScrim, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V1:Z

    if-nez v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    if-eqz v1, :cond_1

    .line 482
    invoke-virtual {v1, v0}, Lcom/oneplus/battery/OpWarpChargingView;->updaetScrimColor(I)V

    .line 483
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oneplus/battery/OpWarpChargingView;->updateColors(I)V

    :cond_1
    return-void

    .line 472
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v0, "can\'t updateScrim"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->addCallback(Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V

    return-void
.end method

.method public animationEnd(I)V
    .locals 3

    const/4 v0, 0x0

    .line 523
    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mAnimationStarted:Z

    .line 524
    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "animationEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$5vtklR-Tu8EsuL7GG0Pgx7MKs0Q;

    invoke-direct {v2, p1}, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$5vtklR-Tu8EsuL7GG0Pgx7MKs0Q;-><init>(I)V

    invoke-static {v1, v2}, Lcom/oneplus/util/OpUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 529
    sget-boolean p1, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    if-nez p0, :cond_0

    .line 530
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 531
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    .line 532
    sput-boolean v0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    :cond_0
    return-void
.end method

.method public animationStart(I)V
    .locals 4

    const/4 v0, 0x1

    .line 491
    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mAnimationStarted:Z

    .line 492
    invoke-virtual {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->playChargingSound()V

    .line 494
    iget v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCacheFastChargeType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 495
    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "Notify fast charge changed by cache"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCacheFastChargeType:I

    invoke-virtual {p0, v1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->onFastChargeChanged(I)V

    .line 497
    iput v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCacheFastChargeType:I

    .line 502
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCacheWirelessWarpChargeType:Z

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "Notify wireless charge charging by cache"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCacheWirelessWarpChargeType:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->onWirelessWarpChargeChanged(Z)V

    const/4 v1, 0x0

    .line 505
    iput-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCacheWirelessWarpChargeType:Z

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "animationStart"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$mohiFvFBhh3_g_WyopM6xYNqSWY;

    invoke-direct {v1, p1}, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$mohiFvFBhh3_g_WyopM6xYNqSWY;-><init>(I)V

    invoke-static {p0, v1}, Lcom/oneplus/util/OpUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 513
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    .line 514
    sput-boolean v0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    const/4 p1, 0x0

    .line 515
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    .line 518
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    return-void
.end method

.method public disPatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1095
    invoke-virtual {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isAnimationStarted()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1099
    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    if-eqz p1, :cond_1

    .line 1100
    invoke-virtual {p1}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    .line 1104
    :cond_1
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpSWarpChargingView:Lcom/oneplus/battery/OpSWarpChargingView;

    if-eqz p1, :cond_2

    .line 1105
    invoke-virtual {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    .line 1108
    :cond_2
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpCBWarpChargingView:Lcom/oneplus/battery/OpCBWarpChargingView;

    if-eqz p1, :cond_3

    .line 1109
    invoke-virtual {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    .line 1112
    :cond_3
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    if-eqz p0, :cond_4

    .line 1113
    invoke-virtual {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    :cond_4
    return-void
.end method

.method public init(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Support V1 charging animation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Support V2 charging animation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportREDCharging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->genOpCBWarpChargingView()Lcom/oneplus/battery/OpCBWarpChargingView;

    goto :goto_0

    .line 284
    :cond_1
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V2:Z

    if-eqz v0, :cond_2

    .line 285
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->genOpSWarpChargingView()Lcom/oneplus/battery/OpSWarpChargingView;

    goto :goto_0

    .line 286
    :cond_2
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V1:Z

    if-eqz v0, :cond_3

    .line 288
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->genOpNewWarpChargingView()Lcom/oneplus/battery/OpNewWarpChargingView;

    goto :goto_0

    .line 291
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->genOpWarpChargingView()Lcom/oneplus/battery/OpWarpChargingView;

    .line 297
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->initOPWarpCharging()V

    .line 300
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mKeyguardStateCallback:Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    return-void
.end method

.method public isAnimationStarted()Z
    .locals 0

    .line 1056
    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mAnimationStarted:Z

    return p0
.end method

.method protected isDockOnWireless()Z
    .locals 2

    .line 1160
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "doced_on_wireless_charger"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$new$2$OpChargingAnimationControllerImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->lambda$new$2()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/battery/OpWarpChargingView;->onBatteryLevelChanged(IZZ)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/battery/OpNewWarpChargingView;->onBatteryLevelChanged(IZZ)V

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpSWarpChargingView:Lcom/oneplus/battery/OpSWarpChargingView;

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/battery/OpSWarpChargingView;->onBatteryLevelChanged(IZZ)V

    .line 338
    :cond_2
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpCBWarpChargingView:Lcom/oneplus/battery/OpCBWarpChargingView;

    if-eqz p0, :cond_3

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/battery/OpCBWarpChargingView;->onBatteryLevelChanged(IZZ)V

    :cond_3
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1062
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigChanged / newConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mSmallestWidth:I

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v0, v1, :cond_3

    .line 1068
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportREDCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->genOpCBWarpChargingView()Lcom/oneplus/battery/OpCBWarpChargingView;

    goto :goto_0

    .line 1071
    :cond_0
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V2:Z

    if-eqz v0, :cond_1

    .line 1072
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->genOpSWarpChargingView()Lcom/oneplus/battery/OpSWarpChargingView;

    goto :goto_0

    .line 1073
    :cond_1
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V1:Z

    if-eqz v0, :cond_2

    .line 1075
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->genOpNewWarpChargingView()Lcom/oneplus/battery/OpNewWarpChargingView;

    goto :goto_0

    .line 1078
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->genOpWarpChargingView()Lcom/oneplus/battery/OpWarpChargingView;

    .line 1084
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->initOPWarpCharging()V

    .line 1086
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mSmallestWidth:I

    :cond_3
    return-void
.end method

.method public onFastChargeChanged(I)V
    .locals 5

    .line 359
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isWarpCharging(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 364
    iget-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWarpFastCharging:Z

    if-eq v0, v1, :cond_8

    .line 366
    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 368
    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isKeyguardShowing:Z

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBouncerShow:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    if-nez v1, :cond_9

    .line 372
    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    if-eqz v1, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->updateScrim()V

    .line 374
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {p1}, Lcom/oneplus/battery/OpWarpChargingView;->startAnimation()V

    goto :goto_1

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isAnimationStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 378
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheFastChargeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iput p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCacheFastChargeType:I

    return-void

    .line 383
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->updateScrim()V

    .line 386
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportREDCharging()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v4, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpCBWarpChargingView:Lcom/oneplus/battery/OpCBWarpChargingView;

    if-eqz v1, :cond_4

    if-ne p1, v4, :cond_3

    .line 390
    invoke-virtual {v1, v2}, Lcom/oneplus/battery/OpCBWarpChargingView;->notifyWarpCharging(I)V

    goto :goto_1

    .line 392
    :cond_3
    invoke-virtual {v1, v3}, Lcom/oneplus/battery/OpCBWarpChargingView;->notifyWarpCharging(I)V

    goto :goto_1

    .line 395
    :cond_4
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V2:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpSWarpChargingView:Lcom/oneplus/battery/OpSWarpChargingView;

    if-eqz v1, :cond_6

    if-ne p1, v4, :cond_5

    .line 398
    invoke-virtual {v1, v2}, Lcom/oneplus/battery/OpSWarpChargingView;->notifyWarpCharging(I)V

    goto :goto_1

    .line 400
    :cond_5
    invoke-virtual {v1, v3}, Lcom/oneplus/battery/OpSWarpChargingView;->notifyWarpCharging(I)V

    goto :goto_1

    .line 403
    :cond_6
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V1:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    if-eqz p1, :cond_7

    .line 405
    invoke-virtual {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->notifyWarpCharging()V

    .line 412
    :cond_7
    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWarpFastCharging:Z

    goto :goto_2

    :cond_8
    if-nez v0, :cond_9

    .line 416
    iget-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWarpFastCharging:Z

    if-eq v0, p1, :cond_9

    .line 417
    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWarpFastCharging:Z

    :cond_9
    :goto_2
    return-void
.end method

.method public onSWarpBatteryLevelChanged(FFJ)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpSWarpChargingView:Lcom/oneplus/battery/OpSWarpChargingView;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/battery/OpSWarpChargingView;->onSWarpBatteryLevelChanged(FFJ)V

    .line 350
    :cond_0
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpCBWarpChargingView:Lcom/oneplus/battery/OpCBWarpChargingView;

    if-eqz p0, :cond_1

    .line 351
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/battery/OpCBWarpChargingView;->onSWarpBatteryLevelChanged(FFJ)V

    :cond_1
    return-void
.end method

.method public onWirelessWarpChargeChanged(Z)V
    .locals 3

    if-eqz p1, :cond_4

    .line 426
    iget-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWirelessWarpCharging:Z

    if-eq p1, v0, :cond_4

    .line 428
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 430
    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isKeyguardShowing:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBouncerShow:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    if-nez v0, :cond_5

    .line 437
    invoke-virtual {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isAnimationStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCacheWirelessWarpCharging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCacheWirelessWarpChargeType:Z

    return-void

    .line 444
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->updateScrim()V

    .line 446
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpCBWarpChargingView:Lcom/oneplus/battery/OpCBWarpChargingView;

    if-eqz v0, :cond_2

    .line 447
    invoke-virtual {v0, v1}, Lcom/oneplus/battery/OpCBWarpChargingView;->notifyWarpCharging(I)V

    goto :goto_1

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpSWarpChargingView:Lcom/oneplus/battery/OpSWarpChargingView;

    if-eqz v0, :cond_3

    .line 449
    invoke-virtual {v0, v1}, Lcom/oneplus/battery/OpSWarpChargingView;->notifyWarpCharging(I)V

    goto :goto_1

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpNewWarpChargingView:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-virtual {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->notifyWarpCharging()V

    .line 458
    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWirelessWarpCharging:Z

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    .line 462
    iget-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWirelessWarpCharging:Z

    if-eq p1, v0, :cond_5

    .line 463
    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWirelessWarpCharging:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public playChargingSound()V
    .locals 10

    .line 1120
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 1121
    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play charging sound. mute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 1122
    iget-object v3, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mChargingSound:Landroid/media/SoundPool;

    if-eqz v3, :cond_0

    .line 1123
    iget v4, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mChargingSoundId:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 1125
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play charging sound result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected registerDockOnWirelessObserver(Z)V
    .locals 3

    .line 1135
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDockOnWirelessObserver regsiter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 1137
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mDockOnWirelessObserver:Landroid/database/ContentObserver;

    if-nez p1, :cond_0

    .line 1138
    new-instance p1, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$4;

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$4;-><init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mDockOnWirelessObserver:Landroid/database/ContentObserver;

    .line 1148
    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "doced_on_wireless_charger"

    .line 1149
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mDockOnWirelessObserver:Landroid/database/ContentObserver;

    .line 1148
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 1152
    :cond_1
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mDockOnWirelessObserver:Landroid/database/ContentObserver;

    if-eqz p1, :cond_2

    .line 1153
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mDockOnWirelessObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    .line 1154
    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mDockOnWirelessObserver:Landroid/database/ContentObserver;

    :cond_2
    :goto_0
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 255
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 256
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public removeCallback(Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 316
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->removeCallback(Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V

    return-void
.end method
