.class public Lcom/oneplus/systemui/biometrics/OpFodIconViewController;
.super Ljava/lang/Object;
.source "OpFodIconViewController.java"

# interfaces
.implements Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final FORCE_APPLIED_CUST_ICON:Z


# instance fields
.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

.field private mAppliedCustIcon:Z

.field private mContext:Landroid/content/Context;

.field private mContextResolver:Landroid/content/ContentResolver;

.field private mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

.field private mGoingToSleep:Z

.field private mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

.field private mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

.field private mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

.field private mIsScreenTurningOn:Z

.field private mIsWakingUp:Z

.field mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mPanel:Landroid/view/View;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSettingsObserver:Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;

.field private mShowingKeyguard:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mTimeoutAnimator:Landroid/animation/ValueAnimator;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.force_applied_cust_icon"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->FORCE_APPLIED_CUST_ICON:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mAppliedCustIcon:Z

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$1;-><init>(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;-><init>(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$3;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$3;-><init>(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$id;->op_fingerprint_icon_white:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_icon:I

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_icon_disable:I

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    sget p2, Lcom/android/systemui/R$id;->fp_panel:I

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mPanel:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$dimen;->op_fp_panel_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-static {p3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->updatePanelColor()V

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mPowerManager:Landroid/os/PowerManager;

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    iput-object p4, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContextResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;-><init>(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mSettingsObserver:Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mSettingsObserver:Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;->register()V

    :cond_0
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->addFingerprintStateChangeListener(Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;)V

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->updateNormalIcon()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$002(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIsWakingUp:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mGoingToSleep:Z

    return p1
.end method

.method static synthetic access$302(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIsScreenTurningOn:Z

    return p1
.end method

.method static synthetic access$402(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mShowingKeyguard:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContextResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private updateNormalIcon()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->FORCE_APPLIED_CUST_ICON:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNormalIcon: cur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pre="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mAppliedCustIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFodIconViewController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mAppliedCustIcon:Z

    if-eq v1, v0, :cond_4

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->fod_icon_custom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->fod_icon_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mAppliedCustIcon:Z

    :cond_4
    return-void
.end method

.method private updatePanelColor()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mPanel:Landroid/view/View;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget v1, Lcom/android/systemui/R$color;->op_fp_panel_color_dark:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/systemui/R$color;->op_fp_panel_color_light:I

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public handleUpdateIconVisibility(Z)V
    .locals 36

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v2, :cond_0

    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    :cond_0
    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const-string v3, "OpFodIconViewController"

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v2, :cond_1

    goto/16 :goto_a

    :cond_1
    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    iget-object v6, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v6

    iget-object v7, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v7

    iget-object v8, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isImeShow()Z

    move-result v8

    iget-object v9, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v9

    iget-object v10, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v10

    iget-object v11, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v11

    iget-object v12, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v12}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isQSExpanded()Z

    move-result v12

    iget-object v13, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v13}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeActivte()Z

    move-result v13

    iget-object v14, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v14

    iget-object v15, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v15}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isLaunchingCamera()Z

    move-result v15

    iget-object v4, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isLaunchingLeftAffordance()Z

    move-result v4

    iget-object v5, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    move/from16 v16, v11

    iget-object v11, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v11

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v3

    move/from16 v18, v3

    iget-object v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v3}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isFaceUnlocked()Z

    move-result v3

    move/from16 v19, v14

    iget-object v14, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isShuttingDown()Z

    move-result v14

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v20

    move/from16 v21, v14

    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFromBiometricPrompt()Z

    move-result v14

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v20

    move/from16 v22, v14

    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isBiometricPromptReadyToShow()Z

    move-result v14

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v20

    move/from16 v23, v14

    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintSuspended()Z

    move-result v14

    move/from16 v20, v14

    iget-object v14, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorDetectedNear()Z

    move-result v14

    move/from16 v24, v14

    if-eqz v5, :cond_2

    iget-object v14, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    :goto_0
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v25

    move/from16 v26, v5

    invoke-virtual/range {v25 .. v25}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintStopped()Z

    move-result v5

    move/from16 v25, v5

    iget-object v5, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v5

    move/from16 v27, v5

    iget-object v5, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFodShouldHiddenOnAod()Z

    move-result v5

    move/from16 v28, v5

    iget-object v5, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFodHintShowing()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->isShowingFodIcon()Z

    move-result v29

    if-nez v29, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->isShowingDisableIcon()Z

    move-result v29

    if-eqz v29, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v29, v5

    const/16 v30, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move/from16 v29, v5

    const/16 v30, 0x1

    :goto_2
    iget-object v5, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    move/from16 v31, v13

    const/4 v13, 0x2

    if-ne v5, v13, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    iget-object v13, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v13}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isShutdownDialogVisible()Z

    move-result v13

    move/from16 v32, v13

    iget-object v13, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v13

    move/from16 v33, v13

    iget-object v13, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v13}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isEmergencyPanelExpand()Z

    move-result v13

    move/from16 v34, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v35, v5

    const-string v5, "updateIconVisibility: fp client = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getCurrentOwner()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isOwnerKeyguard = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", forceHide = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isBouncer = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isImeShow = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", goingToSleep = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mGoingToSleep:Z

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", screenOn = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isUnlockAllowed = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", interactive = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", keyguard visible = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mShowingKeyguard:Z

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isDreaming = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isKeyguardShowingAndOccluded = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isFaceUnlocked = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isSimPinSecure = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isQSExpanded = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isLaunchingCamera = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", LeftAffordance:"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isPreventActivte = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v31

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v31, v10

    const-string v10, ", isShowing = "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v26

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v26, v3

    const-string v3, ", isLockOut = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFacelockRecognizing = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v19

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsScreenTurningOn = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIsScreenTurningOn:Z

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsWakingUp = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIsWakingUp:Z

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isShuttingDown = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v21

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v19, v6

    const-string v6, ", isFromBiometricPrompt = "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v22

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v21, v8

    const-string v8, ", isBiometricPromptReadyToShow = "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v23

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v22, v12

    const-string v12, ", isFpSuspended = "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v20

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isFpStopped = "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v25

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isKeyguardSensorDetectedNear = "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v24

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", visibility = "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getVisibility()I

    move-result v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", isAlwaysOnEnabled = "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v27

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isHidingOnAod = "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v28

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v23, v5

    const-string v5, ", isFodHintShowing= "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v29

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v27, v10

    const-string v10, ", isLandscape= "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v35

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isShutdownDialogVisible= "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v32

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isUserSwitching= "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v33

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isEmergencyPanelExpand = "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v34

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v10, v17

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x4

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    const-string v1, "1"

    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_6
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isAuthenticateSuccess()Z

    move-result v1

    if-nez v1, :cond_1c

    if-eqz v3, :cond_7

    goto/16 :goto_6

    :cond_7
    if-eqz v6, :cond_8

    if-nez v8, :cond_8

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    const-string v1, "9"

    goto :goto_4

    :cond_8
    if-nez v2, :cond_9

    if-eqz v11, :cond_9

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v12, :cond_9

    if-nez v5, :cond_9

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v1, "10"

    goto :goto_4

    :cond_9
    const/16 v1, 0x8

    if-nez v2, :cond_a

    iget-boolean v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mGoingToSleep:Z

    if-eqz v3, :cond_b

    :cond_a
    if-eqz v14, :cond_b

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v7, :cond_1b

    :cond_b
    if-nez v9, :cond_1b

    if-nez v15, :cond_1b

    if-nez v4, :cond_1b

    if-eqz v2, :cond_c

    if-nez v27, :cond_c

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v11, :cond_1b

    iget-boolean v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIsWakingUp:Z

    if-nez v3, :cond_1b

    :cond_c
    if-eqz v2, :cond_d

    if-eqz v11, :cond_d

    if-nez v27, :cond_d

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isForceShowClient()Z

    move-result v3

    if-nez v3, :cond_1b

    :cond_d
    if-eqz v2, :cond_f

    if-nez v23, :cond_f

    if-eqz v22, :cond_e

    if-nez v7, :cond_e

    if-nez v16, :cond_1b

    :cond_e
    if-nez v21, :cond_1b

    if-nez v34, :cond_1b

    :cond_f
    if-nez v20, :cond_1b

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v2

    if-nez v2, :cond_10

    if-eqz v25, :cond_10

    if-nez v19, :cond_1b

    :cond_10
    if-eqz v11, :cond_1b

    if-nez v24, :cond_1b

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getCurrentOwner()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isAppLocker(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    if-nez v35, :cond_1b

    :cond_12
    if-nez v32, :cond_1b

    if-eqz v33, :cond_13

    goto/16 :goto_5

    :cond_13
    if-eqz v26, :cond_14

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    const-string v1, "4"

    goto/16 :goto_4

    :cond_14
    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    const-string v1, "5"

    goto/16 :goto_7

    :cond_15
    const/4 v2, 0x0

    if-nez v19, :cond_16

    if-nez v18, :cond_16

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v3, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v3, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v2, v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v1, "6"

    goto/16 :goto_4

    :cond_16
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    const-string v1, "7"

    goto/16 :goto_4

    :cond_17
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v13, :cond_1a

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mShowingKeyguard:Z

    if-nez v1, :cond_18

    if-nez v31, :cond_18

    if-nez v1, :cond_1a

    if-eqz v7, :cond_1a

    :cond_18
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v1, "8-1"

    goto :goto_7

    :cond_19
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v1, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v1, "8-2"

    goto :goto_7

    :cond_1a
    const/4 v2, 0x0

    const-string v1, "0"

    goto :goto_7

    :cond_1b
    :goto_5
    const/4 v2, 0x0

    iget-object v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v3, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v3, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v3, v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v1, "3"

    goto :goto_7

    :cond_1c
    :goto_6
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v13}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    const-string v1, "2"

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->updatePanelVisibility()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caseLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->isShowingFodIcon()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->isShowingDisableIcon()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_8

    :cond_1d
    move v4, v2

    move/from16 v0, v30

    goto :goto_9

    :cond_1e
    :goto_8
    move/from16 v0, v30

    const/4 v4, 0x1

    :goto_9
    if-eq v0, v4, :cond_1f

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->notifyFodIconChanged(Z)V

    :cond_1f
    return-void

    :cond_20
    :goto_a
    move-object v10, v3

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not update when icon null, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    if-nez v3, :cond_21

    const/4 v3, 0x1

    goto :goto_b

    :cond_21
    move v3, v2

    :goto_b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    if-nez v0, :cond_22

    const/4 v4, 0x1

    goto :goto_c

    :cond_22
    move v4, v2

    :goto_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleUpdateLayoutDimension()V
    .locals 4

    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    sget v2, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_2k:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_1080p:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v2, v0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->updateLayoutDimension(Z)V

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->updateLayoutDimension(Z)V

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_2k:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_1080p:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public isShowingDisableIcon()Z
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isShowingFodIcon()Z
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onBrightnessChange()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->onBrightnessChange()V

    :cond_0
    return-void
.end method

.method public onFingerprintStateChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->updatePanelColor()V

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->updateNormalIcon()V

    return-void
.end method

.method public updatePanelVisibility()V
    .locals 1

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFromBiometricPrompt()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isFodHighlighted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mPanel:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->mPanel:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
