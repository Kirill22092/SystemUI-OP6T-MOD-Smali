.class public Lcom/oneplus/aod/OpAodDisplayViewManager;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;
    }
.end annotation


# static fields
.field private static final AOD_SCRIM_ALPHA_VALUE:F


# instance fields
.field private mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

.field private mAodMainView:Lcom/oneplus/aod/OpAodMain;

.field private mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private mHandler:Landroid/os/Handler;

.field private mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

.field private mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

.field public mIsPlayFingerprintUnlockAnimation:Z

.field private mIsPress:Z

.field private mIsScreenTurnedOff:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLayoutDir:I

.field private mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

.field private mNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRealDisplaySize:Landroid/graphics/Point;

.field private mResetIndicationRunnable:Ljava/lang/Runnable;

.field private mScreenTurnedOn:Z

.field private mScrimView:Landroid/view/View;

.field private mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

.field private mShouldPlayLightEffect:Z

.field private mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

.field private mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

.field private mStatus:I

.field private mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.aod_scrim_alpha_value"

    const/16 v1, 0x12c

    .line 90
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    sput v0, Lcom/oneplus/aod/OpAodDisplayViewManager;->AOD_SCRIM_ALPHA_VALUE:F

    const-string v0, "sys.c.aod.move_delay"

    const v1, 0xea60

    .line 105
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 114
    iput v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    .line 139
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mRealDisplaySize:Landroid/graphics/Point;

    .line 140
    const-class v1, Landroid/util/DisplayMetrics;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    iput-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 144
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mShouldPlayLightEffect:Z

    .line 148
    new-instance v0, Lcom/oneplus/aod/OpAodDisplayViewManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$1;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mResetIndicationRunnable:Ljava/lang/Runnable;

    .line 289
    new-instance v0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$2;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    const/4 v0, 0x0

    .line 496
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPress:Z

    .line 531
    new-instance v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$4;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 169
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 171
    iput-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 172
    invoke-virtual {p3}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getAodWindowManager()Lcom/oneplus/aod/OpAodWindowManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oneplus/aod/OpAodWindowManager;->getUIHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    const-string p2, "power"

    .line 173
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    .line 174
    new-instance p2, Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-direct {p2, p1}, Lcom/oneplus/aod/OpClockViewCtrl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    .line 175
    new-instance p2, Lcom/oneplus/aod/slice/OpSliceManager;

    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p3, v0}, Lcom/oneplus/aod/slice/OpSliceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    .line 177
    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 178
    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 179
    new-instance p2, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, p3}, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    .line 181
    new-instance p2, Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-direct {p2, p1, p3}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;-><init>(Landroid/content/Context;Lcom/oneplus/aod/OpClockViewCtrl;)V

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    .line 184
    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpFpAodIndicationText;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodThreeKeyStatusView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/bg/OpAodCanvas;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodNotificationIconAreaController;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScreenTurnedOn:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScreenTurnedOn:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/oneplus/aod/OpAodDisplayViewManager;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/aod/OpAodDisplayViewManager;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsScreenTurnedOff:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsScreenTurnedOff:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/oneplus/aod/OpAodDisplayViewManager;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->userActivityInAlwaysOn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Ljava/lang/Runnable;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mResetIndicationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oneplus/aod/OpAodDisplayViewManager;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->handleEnvironmentLightChanged()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodLightEffectContainer;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpSingleNotificationView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/os/Handler;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/oneplus/aod/OpAodDisplayViewManager;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    return p1
.end method

.method static synthetic access$2102(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPress:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mShouldPlayLightEffect:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->handleUpdateView()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OpAodDisplayViewManager;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mViewInit:Z

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/slice/OpSliceManager;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodMain;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "threekey"

    return-object p0

    :cond_1
    const-string p0, "notification"

    return-object p0

    :cond_2
    const-string p0, "main"

    return-object p0

    :cond_3
    const-string p0, "none"

    return-object p0
.end method

.method private handleEnvironmentLightChanged()V
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodMain;->setAlphaDependOnEnvironmentLight()V

    .line 775
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    .line 776
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    .line 777
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 783
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->setScrimAlphaDependOnEnvironmentLight()V

    return-void
.end method

.method private handleUpdateView()V
    .locals 5

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    invoke-direct {p0, v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIsPlayFingerprintUnlockAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPlayFingerprintUnlockAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsPress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsScreenTurnedOff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsScreenTurnedOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mScreenTurnedOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScreenTurnedOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodDisplayViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsScreenTurnedOff:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScreenTurnedOn:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 441
    :cond_0
    iget v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScrimView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 443
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 448
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->resetNotificationAnimView()V

    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 456
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->setScrimAlphaDependOnEnvironmentLight()V

    .line 459
    iget v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    const/4 v2, 0x1

    const/4 v4, 0x2

    if-ne v0, v2, :cond_4

    .line 461
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isAlwaysOnEnabledWithTimer()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 462
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 468
    :goto_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_4
    if-ne v0, v4, :cond_5

    .line 471
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 476
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    :cond_6
    :goto_2
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isNotificationLightEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 484
    iget v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    if-ne v0, v4, :cond_7

    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mShouldPlayLightEffect:Z

    if-eqz v0, :cond_7

    .line 486
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->showLight()V

    .line 487
    iput-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mShouldPlayLightEffect:Z

    goto :goto_3

    .line 489
    :cond_7
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->resetNotificationAnimView()V

    :cond_8
    :goto_3
    return-void

    :cond_9
    :goto_4
    const-string v0, "screen is not turned off yet."

    .line 431
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScrimView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 433
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 436
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/oneplus/aod/bg/OpAodCanvas;->release()V

    .line 219
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->op_aod_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContainer:Landroid/view/ViewGroup;

    .line 220
    sget v0, Lcom/android/systemui/R$id;->op_aod_bg:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/bg/OpAodCanvas;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    .line 221
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/bg/OpAodCanvas;->setHandler(Landroid/os/Handler;)V

    .line 222
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    sget v1, Lcom/android/systemui/R$id;->op_aod_lowlight_mask:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/bg/OpAodCanvas;->setAodMask(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpClockViewCtrl;->removeOnChangeListener(Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;)V

    .line 225
    sget v0, Lcom/android/systemui/R$id;->op_aod_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpAodMain;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    .line 226
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/OpClockViewCtrl;->addOnChangeListener(Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;)V

    .line 227
    sget v0, Lcom/android/systemui/R$id;->single_notification_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpSingleNotificationView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    .line 229
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLayoutDir:I

    .line 230
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initViews mLayoutDir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLayoutDir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodDisplayViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->three_key_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    .line 235
    sget v0, Lcom/android/systemui/R$id;->aod_scrim:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScrimView:Landroid/view/View;

    .line 237
    sget v0, Lcom/android/systemui/R$id;->notification_animation_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpAodLightEffectContainer;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    .line 238
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_custom_horizon_light_animation_style"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setLightIndex(I)V

    .line 245
    sget v0, Lcom/android/systemui/R$id;->op_aod_fp_indication_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/aod/OpFpAodIndicationText;

    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    .line 246
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/aod/OpFpAodIndicationText;->init(Lcom/oneplus/aod/OpAodDisplayViewManager;Landroid/os/Handler;)V

    .line 247
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateIndication()V

    return-void
.end method

.method private isAodMode()Z
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onUserTrigger(I)V
    .locals 2

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserTrigger: reason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodDisplayViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$9;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager$9;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private setScrimAlphaDependOnEnvironmentLight()V
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isLowLightEnv()Z

    move-result v0

    .line 788
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/aod/OpAodDisplayViewManager;->AOD_SCRIM_ALPHA_VALUE:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private updateIndication()V
    .locals 5

    .line 259
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_3

    .line 263
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 265
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 266
    iget-object v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 267
    iget-object v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mRealDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 268
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mRealDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 269
    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v2

    .line 270
    iget-object v3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 271
    sget v4, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_location_y_2k:I

    goto :goto_0

    :cond_0
    sget v4, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_location_y_1080p:I

    .line 270
    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 274
    iget-object v4, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    iget-object v4, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->getCutoutPathdataHeight(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 279
    :cond_1
    iget-object v4, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v2, :cond_2

    .line 280
    sget v2, Lcom/android/systemui/R$dimen;->op_keyguard_indication_padding_bottom_2k:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/android/systemui/R$dimen;->op_keyguard_indication_padding_bottom_1080p:I

    .line 279
    :goto_1
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    .line 282
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 283
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private updateView()V
    .locals 2

    .line 401
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mViewInit:Z

    if-nez v0, :cond_1

    .line 403
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mViewInit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mViewInit:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AodDisplayViewManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$3;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private userActivityInAlwaysOn(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 941
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->userActivityInAlwaysOn(Ljava/lang/String;Z)V

    return-void
.end method

.method private userActivityInAlwaysOn(Ljava/lang/String;Z)V
    .locals 2

    .line 946
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->isAodMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/aod/OpAodDisplayViewManager$8;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aod scrim alpha= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpAodMain;->dump(Ljava/io/PrintWriter;)V

    .line 892
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/slice/OpSliceManager;->dump(Ljava/io/PrintWriter;)V

    .line 894
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 895
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 897
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "AODUITHREAD MESSAGE QUEUE = "

    .line 898
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 899
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string p1, " AODUITHREAD "

    invoke-virtual {p0, v0, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAodDisplayViewState()I
    .locals 0

    .line 1016
    iget p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    return p0
.end method

.method public getAodNotificationIconCtrl()Lcom/oneplus/aod/OpAodNotificationIconAreaController;
    .locals 0

    .line 528
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    return-object p0
.end method

.method public handleUserUnlocked()V
    .locals 0

    .line 798
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->onTimeChanged()V

    return-void
.end method

.method public hasHintText()Z
    .locals 1

    .line 1022
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1023
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 320
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    .line 321
    iget v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLayoutDir:I

    if-eq v0, p1, :cond_1

    .line 322
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mViewInit:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpAodMain;->updateRTL(I)V

    .line 324
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpSingleNotificationView;->updateRTL(I)V

    .line 326
    :cond_0
    iput p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLayoutDir:I

    :cond_1
    return-void
.end method

.method public onDensityOrFontScaleChanged(Landroid/view/ViewGroup;)V
    .locals 1

    .line 252
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateView(Landroid/view/ViewGroup;)V

    .line 253
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->oneplus_contorl_text_size_body1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateIndicationTextSize(II)V

    return-void
.end method

.method public onFingerPressed(Z)V
    .locals 0

    .line 501
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPress:Z

    .line 502
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateView()V

    return-void
.end method

.method public onFodIndicationVisibilityChanged(Z)V
    .locals 2

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFodIndicationVisibilityChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodDisplayViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFodIconVisibility()V

    .line 1032
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpClockViewCtrl;->onFodIndicationVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public onFodShowOrHideOnAod(Z)V
    .locals 2

    .line 926
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$7;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager$7;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 934
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    if-eqz p0, :cond_0

    .line 935
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpFpAodIndicationText;->showOrHide(Z)V

    :cond_0
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 818
    iget-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozingCustom()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 819
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpSingleNotificationView;->onNotificationHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method public onPlayFingerprintUnlockAnimation(Z)V
    .locals 2

    const-string v0, "AodDisplayViewManager"

    const-string v1, "onPlayFingerprintUnlockAnimation"

    .line 510
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPlayFingerprintUnlockAnimation:Z

    .line 512
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateView()V

    return-void
.end method

.method public playAodWakingUpAnimation()Z
    .locals 4

    .line 876
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    .line 877
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->isCanvasAodEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playAodWakingUpAnimation: isAlwaysOnEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isCanvasAodEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AodDisplayViewManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public quickHideNotificationBeforeScreenOff(Lcom/android/systemui/doze/DozeHost$PulseCallback;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "AodDisplayViewManager"

    const-string v1, "quickHideNotificationBeforeScreenOff"

    .line 985
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/aod/OpAodDisplayViewManager$10;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;Lcom/android/systemui/doze/DozeHost$PulseCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recoverFromBurnInScreen()V
    .locals 0

    .line 977
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    return-void
.end method

.method public resetStatus()V
    .locals 2

    const-string v0, "AodDisplayViewManager"

    const-string v1, "resetStatus"

    .line 387
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 389
    iput v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    .line 392
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPress:Z

    .line 394
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateView()V

    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mShouldPlayLightEffect:Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 1039
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    if-eqz v0, :cond_0

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodDisplayViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1042
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1043
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public startDozing()V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$5;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$5;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopDozing()V
    .locals 1

    .line 813
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/slice/OpSliceManager;->setListening(Z)V

    return-void
.end method

.method public updateForPulseReason(I)V
    .locals 8

    .line 332
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozingCustom()Z

    move-result v0

    const-string v1, "AodDisplayViewManager"

    if-nez v0, :cond_0

    const-string p0, "setState: don\'t set view if not dozing"

    .line 333
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "setState: don\'t set view if waking up"

    .line 340
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/16 v3, 0xa

    const/16 v4, 0xc

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq p1, v2, :cond_6

    const/16 v2, 0xb

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-eq p1, v5, :cond_7

    if-ne p1, v4, :cond_3

    goto :goto_1

    :cond_3
    if-ne p1, v6, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    if-ne p1, v3, :cond_5

    move v0, v5

    goto :goto_2

    :cond_5
    const/16 v2, 0xd

    if-ne p1, v2, :cond_8

    return-void

    .line 349
    :cond_6
    :goto_0
    iput-boolean v6, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mShouldPlayLightEffect:Z

    :cond_7
    :goto_1
    move v0, v6

    .line 362
    :cond_8
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setState="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getStateString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", from="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    invoke-direct {p0, v7}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getStateString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    if-eq v1, v0, :cond_a

    .line 364
    iput v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    if-ne v0, v6, :cond_9

    .line 366
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/slice/OpSliceManager;->onInitiativePulse()V

    .line 369
    :cond_9
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateView()V

    .line 374
    :cond_a
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_b

    if-ne p1, v3, :cond_c

    .line 378
    :cond_b
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->onUserTrigger(I)V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pulse reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    .line 380
    invoke-static {v0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->isCanvasAodEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 379
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->userActivityInAlwaysOn(Ljava/lang/String;Z)V

    :cond_c
    return-void
.end method

.method public updateIndicationTextSize(II)V
    .locals 2

    .line 907
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/aod/OpAodDisplayViewManager$6;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateView(Landroid/view/ViewGroup;)V
    .locals 4

    .line 189
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "AodDisplayViewManager"

    const-string v1, "**updateView**"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->initViews(Landroid/view/ViewGroup;)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpClockViewCtrl;->removeOnChangeListener(Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;)V

    .line 195
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    sget v1, Lcom/android/systemui/R$id;->slice_info_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/slice/OpSliceManager;->initViews(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpClockViewCtrl;->addOnChangeListener(Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->initViews(Landroid/view/ViewGroup;)V

    .line 200
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpClockViewCtrl;->initViews(Landroid/view/ViewGroup;)V

    .line 202
    iget-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mViewInit:Z

    if-nez p1, :cond_1

    .line 203
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {p1, v0}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    .line 204
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "aod_clock_style"

    .line 205
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 204
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 206
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "aod_display_text"

    .line 207
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    .line 206
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 208
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "op_custom_horizon_light_animation_style"

    .line 209
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    .line 208
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p1, 0x1

    .line 210
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mViewInit:Z

    :cond_1
    return-void
.end method
