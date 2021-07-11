.class public Lcom/android/systemui/volume/VolumeDialogImpl;
.super Lcom/oneplus/volume/OpVolumeDialogImpl;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;,
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;,
        Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;,
        Lcom/android/systemui/volume/VolumeDialogImpl$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mRingerModeMinLevel:I


# instance fields
.field private final mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

.field private final mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private mActiveStream:I

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mAnimVol:Landroid/animation/ValueAnimator;

.field private mAutomute:Z

.field private mConfigChanged:Z

.field private mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

.field private mDialogRowsView:Landroid/view/ViewGroup;

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private mFromTooltip:Z

.field private final mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

.field private mHasSeenODICaptionsTooltip:Z

.field private mHovering:Z

.field private mIsAnimatingDismiss:Z

.field private mIsCaptionComponentEnabled:Z

.field private mIsOpZenModeOn:Z

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mNeedPlayExpandAnim:Z

.field private mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

.field private mODICaptionsTooltipView:Landroid/view/View;

.field private mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

.field private mODIDebug:Z

.field private mPrevActiveStream:I

.field private mRinger:Landroid/view/ViewGroup;

.field private mRingerIcon:Landroid/widget/ImageButton;

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mSettingsBackIcon:Landroid/widget/ImageButton;

.field private mSettingsBackView:Landroid/view/View;

.field private mSettingsIcon:Landroid/widget/ImageButton;

.field private mSettingsOpSettingsIcon:Landroid/widget/ImageButton;

.field private mSettingsOpSettingsView:Landroid/view/View;

.field private mSettingsView:Landroid/view/View;

.field private mShowA11yStream:Z

.field private mShowActiveStreamOnly:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private mTargetBottomSettingsBackIconVisible:I

.field private mTargetBottomSettingsIconVisible:I

.field private mTargetBottomSettingsOpSettingsIconVisible:I

.field private mWindow:Landroid/view/Window;

.field private mZenIcon:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 227
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportSOCThreekey()Z

    move-result v0

    sput v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerModeMinLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 250
    invoke-direct {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;-><init>()V

    .line 176
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$H;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 197
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    .line 202
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 210
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 215
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    .line 216
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 219
    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 229
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsIconVisible:I

    const/16 v1, 0x8

    .line 230
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsBackIconVisible:I

    .line 231
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsOpSettingsIconVisible:I

    .line 232
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    .line 2328
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$9;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 251
    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/android/systemui/R$style;->qs_theme:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 253
    const-class v1, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 254
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    .line 255
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 256
    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 257
    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->showActiveStreamOnly()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowActiveStreamOnly:Z

    const-string/jumbo v1, "systemui.odi.debug"

    .line 265
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODIDebug:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "HasSeenODICaptionsTooltip"

    .line 266
    invoke-static {p1, v1, v0}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    .line 270
    new-instance p1, Lcom/android/systemui/volume/VolumeDialogImpl$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$1;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mClickOutputChooser:Landroid/view/View$OnClickListener;

    .line 281
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->loadOpDimens()V

    .line 282
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vol Controller, mOpBeforeExpandWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpBeforeExpandWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOpafterExpandWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    new-instance p1, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;

    invoke-direct {p1, p0}, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl;)V

    iput-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDeviceInfo:Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;

    .line 288
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->showOutputChooserH()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setOpOutputChooserVisible(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setOpOutputChooserGravityNeedBeforeAnimStart(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 155
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Object;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateDialogLayout()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateODIRelatedLayout()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->loadOpDimens()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/volume/VolumeDialogImpl;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpBeforeExpandWidth:I

    return p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/volume/VolumeDialogImpl;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    return p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setExpandFeautureDismissState()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mPendingInit:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    return p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p0
.end method

.method static synthetic access$4102(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsCaptionComponentEnabled:Z

    return p0
.end method

.method static synthetic access$4202(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsCaptionComponentEnabled:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mFromTooltip:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/systemui/volume/VolumeDialogImpl;ZZ)V
    .locals 0

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateODICaptionsH(ZZ)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/volume/VolumeDialogImpl;IZ)V
    .locals 0

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->setDismissDialog()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    return p0
.end method

.method static synthetic access$4800()I
    .locals 1

    .line 155
    sget v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerModeMinLevel:I

    return v0
.end method

.method static synthetic access$4900(Landroid/widget/SeekBar;I)I
    .locals 0

    .line 155
    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumeDialogImpl;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumeDialogImpl;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpBeforeExpandWidth:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumeDialogImpl;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpBeforeExpandWidth:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    return-object p0
.end method

.method private addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1840
    sget p2, Lcom/android/systemui/R$string;->volume_ringer_status_normal:I

    goto :goto_0

    .line 1836
    :cond_0
    sget p2, Lcom/android/systemui/R$string;->volume_ringer_status_vibrate:I

    goto :goto_0

    .line 1833
    :cond_1
    sget p2, Lcom/android/systemui/R$string;->volume_ringer_status_silent:I

    .line 1843
    :goto_0
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1844
    new-instance p2, Lcom/android/systemui/volume/VolumeDialogImpl$7;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$7;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private addExistingRows()V
    .locals 10

    .line 598
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 600
    iget-object v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 601
    iget v5, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    iget v6, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconRes:I

    iget v7, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconMuteRes:I

    iget-boolean v8, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->important:Z

    iget-boolean v9, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->defaultStream:Z

    move-object v3, p0

    move-object v4, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;IIIZZ)V

    .line 603
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object v4, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 604
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addRow(IIIZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 585
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZZ)V

    return-void
.end method

.method private addRow(IIIZZZ)V
    .locals 8

    .line 590
    sget-boolean p6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p6, :cond_0

    sget-object p6, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding row for stream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    new-instance p6, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    invoke-direct {p6}, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;-><init>()V

    move-object v1, p0

    move-object v2, p6

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 592
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;IIIZZ)V

    .line 593
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object p2, p6, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 594
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkODICaptionsTooltip(Z)V
    .locals 1

    .line 995
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 996
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    goto :goto_0

    .line 998
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 999
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideCaptionsTooltip()V

    :cond_1
    :goto_0
    return-void
.end method

.method private computeTimeoutH()I
    .locals 4

    .line 1300
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 1301
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    const/16 v0, 0x3e80

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    const/4 v2, 0x6

    const/16 v3, 0x1388

    if-eqz v0, :cond_1

    .line 1305
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0

    .line 1310
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1311
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0

    .line 1317
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->isStatusBarShowing()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 p0, 0x5dc

    return p0

    .line 1320
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0
.end method

.method private enableRingerViewsH(Z)V
    .locals 1

    .line 1869
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1870
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1872
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenIcon:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1873
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private findRow(I)Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;
    .locals 2

    .line 623
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 624
    iget v1, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getActiveRow()Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;
    .locals 4

    .line 609
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 610
    iget v2, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v2, v3, :cond_0

    return-object v1

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 615
    iget v2, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    return-object v1

    .line 619
    :cond_3
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    return-object p0
.end method

.method private getAlphaAttr(I)I
    .locals 2

    .line 556
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 557
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 558
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 2

    .line 642
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    .line 643
    div-int/lit8 v0, p0, 0x64

    add-int/lit8 v1, v0, -0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    int-to-float p0, v1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    add-int/lit8 v0, p0, 0x1

    :goto_0
    return v0
.end method

.method private getSinglePressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;
    .locals 1

    .line 2312
    new-instance v0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$LT0IPBZdP1jDIMwVCAclfWfxQwU;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$LT0IPBZdP1jDIMwVCAclfWfxQwU;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/widget/ImageButton;)V

    return-object v0
.end method

.method private getSingleUnpressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;
    .locals 0

    .line 2321
    new-instance p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$J07ySb9s3Y3zCMbX45St4b7bh8A;

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$J07ySb9s3Y3zCMbX45St4b7bh8A;-><init>(Landroid/widget/ImageButton;)V

    return-object p0
.end method

.method private getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 2300
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    .line 2304
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2306
    :catch_0
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find translation for stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private hideCaptionsTooltip()V
    .locals 3

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1060
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    invoke-virtual {p0, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1067
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1068
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 1069
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 1070
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$c8tgC19HinFoEv5JhfgLli1ykrw;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$c8tgC19HinFoEv5JhfgLli1ykrw;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1071
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1080
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private hideCaptionsTooltipImmediately()V
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1089
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    iget v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    invoke-virtual {p0, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    .line 1094
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private incrementManualToggleCount()V
    .locals 2

    .line 1164
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "manual_ringer_toggle_count"

    const/4 v1, 0x0

    .line 1165
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1166
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private initDialog()V
    .locals 15

    .line 316
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 318
    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 320
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 321
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    .line 322
    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 323
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0x10002

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 326
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0x10c0028

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 331
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v3, 0x7e4

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 332
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0x1030004

    invoke-virtual {v1, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 333
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v3, -0x3

    .line 334
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 335
    const-class v3, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    goto :goto_0

    :cond_0
    const/16 v3, 0x13

    :goto_0
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x1

    .line 339
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 343
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 344
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v3, -0x2

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$layout;->op_volume_dialog:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->volume_dialog:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 356
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->volume_dialog_upper:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogUpper:Landroid/view/ViewGroup;

    .line 357
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->volume_dialog_lower:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogLower:Landroid/view/ViewGroup;

    .line 359
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 360
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 361
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$8BZhTIdOE2rPYfFa5HbcUDCtXeM;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$8BZhTIdOE2rPYfFa5HbcUDCtXeM;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 391
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$T52d0W13mYvykk6ORgbytqfZsps;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$T52d0W13mYvykk6ORgbytqfZsps;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 400
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogImpl$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 410
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->volume_dialog_row_container:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogRowContainer:Landroid/view/ViewGroup;

    .line 414
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->volume_dialog_row_container_bottom:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogRowContainerBottom:Landroid/view/ViewGroup;

    .line 417
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->volume_dialog_rows:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 418
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->ringer:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 420
    sget v3, Lcom/android/systemui/R$id;->ringer_icon:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 421
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/R$id;->dnd_icon:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenIcon:Landroid/widget/FrameLayout;

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->odi_captions:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 426
    sget v3, Lcom/android/systemui/R$id;->odi_captions_icon:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/CaptionsToggleImageButton;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v3, Lcom/android/systemui/R$id;->odi_captions_tooltip_stub:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 429
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 430
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 431
    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 435
    :cond_3
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 436
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    .line 437
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initDialog, mODICaptionsView:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mIsCaptionComponentEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsCaptionComponentEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsOpZenModeOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsOpZenModeOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsCaptionComponentEnabled:Z

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateODICaptionsH(ZZ)V

    .line 443
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->settings_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    .line 444
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->settings:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    .line 448
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->output_chooser:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    .line 449
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mClickOutputChooser:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->volume_row_connected_device:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mConnectedDevice:Landroid/widget/TextView;

    .line 454
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->settings_back_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    .line 455
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->settings_back:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackIcon:Landroid/widget/ImageButton;

    .line 456
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->settings_opsettings_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    .line 457
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->settings_opsettings:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsIcon:Landroid/widget/ImageButton;

    .line 459
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->output_active_device_icon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandIcon:Landroid/widget/ImageView;

    .line 460
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->output_active_device_name:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandEditText:Landroid/widget/EditText;

    .line 461
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->output_active_device_name_marquee:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserExpandTextView:Landroid/widget/TextView;

    .line 463
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_dialog_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 464
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$3;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$3;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->output_chooser_background_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserBackgroundView:Landroid/view/View;

    .line 486
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mClickOutputChooser:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 490
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v4, 0xa

    .line 491
    sget v6, Lcom/android/systemui/R$drawable;->ic_volume_accessibility:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move v5, v6

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    :cond_6
    const/4 v10, 0x3

    .line 494
    sget v11, Lcom/android/systemui/R$drawable;->ic_volume_media:I

    sget v12, Lcom/android/systemui/R$drawable;->ic_volume_media_mute:I

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    .line 496
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v4, 0x2

    .line 497
    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_ringer:I

    sget v6, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v10, 0x4

    .line 505
    sget v11, Lcom/android/systemui/R$drawable;->op_ic_volume_alarm:I

    sget v12, Lcom/android/systemui/R$drawable;->ic_volume_alarm_mute:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    .line 509
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v4, 0x0

    .line 510
    sget v6, Lcom/android/systemui/R$drawable;->ic_local_phone_24_lib:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move v5, v6

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    const v11, 0x1080506

    const v12, 0x1080506

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, p0

    .line 514
    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    :goto_1
    const/4 v4, 0x6

    .line 519
    sget v6, Lcom/android/systemui/R$drawable;->ic_volume_bt_sco:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, v6

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v10, 0x1

    .line 521
    sget v11, Lcom/android/systemui/R$drawable;->ic_volume_system:I

    sget v12, Lcom/android/systemui/R$drawable;->ic_volume_system_mute:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    goto :goto_2

    .line 525
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->addExistingRows()V

    .line 528
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    .line 529
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRingerH()V

    .line 530
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH()V

    .line 531
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initODICaptionsH()V

    const/16 v0, 0x64

    .line 535
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mAccentColor:I

    .line 538
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 539
    invoke-virtual {p0, v2}, Lcom/oneplus/volume/OpVolumeDialogImpl;->applyColorTheme(Z)V

    .line 541
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateDialogLayout()V

    .line 544
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 545
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateODIRelatedLayout()V

    :cond_a
    return-void

    :catch_0
    move-exception v0

    .line 349
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setContentView Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    return-void
.end method

.method private initODICaptionsH()V
    .locals 3

    .line 984
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    if-eqz v0, :cond_0

    .line 985
    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$9fzv42wROG9GvTVjJNs8RbTVwQs;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$9fzv42wROG9GvTVjJNs8RbTVwQs;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->setOnConfirmedTapListener(Lcom/android/systemui/volume/CaptionsToggleImageButton$ConfirmedTapListener;Landroid/os/Handler;)V

    .line 991
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    return-void
.end method

.method private initRow(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;IIIZZ)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 652
    iput p2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    .line 653
    iput p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconRes:I

    .line 654
    iput p4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconMuteRes:I

    .line 655
    iput-boolean p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->important:Z

    .line 656
    iput-boolean p6, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->defaultStream:Z

    .line 661
    iget-object p4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {p4}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p4

    sget p5, Lcom/android/systemui/R$layout;->op_volume_dialog_row:I

    const/4 p6, 0x0

    invoke-virtual {p4, p5, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    iput-object p4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 664
    iget p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {p4, p5}, Landroid/view/View;->setId(I)V

    .line 665
    iget-object p4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {p4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 666
    iget-object p4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    sget p5, Lcom/android/systemui/R$id;->volume_row_header:I

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    .line 667
    iget p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    mul-int/lit8 p5, p5, 0x14

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setId(I)V

    const/16 p4, 0xa

    if-ne p2, p4, :cond_0

    .line 669
    iget-object p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 671
    :cond_0
    iget-object p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->dnd_icon:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/FrameLayout;

    iput-object p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->dndIcon:Landroid/widget/FrameLayout;

    .line 672
    iget-object p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->volume_row_slider:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/SeekBar;

    iput-object p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 673
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v0, p0, p1, p6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    invoke-virtual {p5, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 675
    iput-object p6, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 677
    iget-object p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    sget p6, Lcom/android/systemui/R$id;->volume_row_icon:I

    invoke-virtual {p5, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/ImageButton;

    iput-object p5, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    .line 678
    invoke-virtual {p5, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 679
    iget p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-eq p3, p4, :cond_1

    .line 680
    iget-object p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    new-instance p4, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$faxejaGfFb01-SDF9TessAqe10c;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$faxejaGfFb01-SDF9TessAqe10c;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;I)V

    invoke-virtual {p3, p4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 728
    :cond_1
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method

.method private isInCall()Z
    .locals 3

    .line 929
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result p0

    .line 930
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInCall phoneState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isLandscape()Z
    .locals 1

    .line 563
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStreamMuted(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Z
    .locals 0

    .line 2111
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eqz p0, :cond_1

    :cond_0
    iget-boolean p0, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$dismissH$17()V
    .locals 2

    .line 1368
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "dismissH withEndAction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setExpandFeautureDismissState()V

    .line 1372
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1374
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1377
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 1379
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->tryToRemoveCaptionsTooltip()V

    .line 1380
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    return-void
.end method

.method private synthetic lambda$dismissH$18()V
    .locals 4

    .line 1366
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$IE-RbQpvR2pa3pWKthxPITNgmkU;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$IE-RbQpvR2pa3pWKthxPITNgmkU;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$getSinglePressFor$25(Landroid/widget/ImageButton;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2314
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 2315
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getSingleUnpressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/ImageButton;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getSingleUnpressFor$26(Landroid/widget/ImageButton;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2323
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hideCaptionsTooltip$15()V
    .locals 1

    .line 1072
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 1074
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initDialog$0()V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "TouchedRingerToggle"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 384
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getSinglePressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x5dc

    .line 383
    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/ImageButton;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initDialog$1(Landroid/content/DialogInterface;)V
    .locals 2

    .line 367
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 368
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 374
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 375
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 376
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 377
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 378
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;-><init>()V

    .line 379
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$vBH_Cy2LsLvfluWDg0W4IzJ1dm8;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$vBH_Cy2LsLvfluWDg0W4IzJ1dm8;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 380
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 388
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$initDialog$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 392
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p2

    .line 393
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    return p2
.end method

.method private synthetic lambda$initODICaptionsH$12()V
    .locals 1

    .line 986
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->onCaptionIconClicked()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const/16 v0, 0x15

    .line 987
    invoke-static {v0, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$initRingerH$11(Landroid/view/View;)V
    .locals 5

    .line 942
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v0, "TouchedRingerToggle"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 943
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez p1, :cond_0

    return-void

    .line 950
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v2

    .line 951
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v4, 0x0

    if-ne v3, v0, :cond_1

    if-eqz v2, :cond_2

    move p1, v1

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_3

    :cond_2
    move p1, v4

    goto :goto_0

    .line 961
    :cond_3
    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez p1, :cond_4

    .line 962
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    :cond_4
    move p1, v0

    :goto_0
    const/16 v2, 0x12

    new-array v1, v1, [Ljava/lang/Object;

    .line 965
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 966
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->incrementManualToggleCount()V

    .line 967
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    if-eq p1, v0, :cond_5

    .line 973
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->provideTouchFeedbackH(I)V

    .line 976
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, p1, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 977
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->maybeShowToastH(I)V

    return-void
.end method

.method private synthetic lambda$initRow$3(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ILandroid/view/View;)V
    .locals 5

    const/4 p3, 0x2

    new-array v0, p3, [Ljava/lang/Object;

    .line 681
    iget v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x7

    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 683
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initRow setOnClickListener row.stream:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", row.iconState:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconState:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", row.ss.level:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", row.ss.levelMin:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", row.lastAudibleLevel:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    .line 691
    iget v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v0, p3, :cond_8

    .line 693
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportSOCThreekey()Z

    move-result v0

    if-nez v0, :cond_6

    .line 694
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v0

    .line 695
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v1, p3, :cond_4

    if-eqz v0, :cond_1

    .line 697
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, v3, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    goto :goto_2

    .line 699
    :cond_1
    iget-object p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    .line 700
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v3, :cond_3

    .line 701
    iget v2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    .line 700
    :cond_3
    invoke-interface {p0, p2, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_2

    :cond_4
    if-ne v1, v3, :cond_5

    .line 704
    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p3, p2, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamMute(IZ)V

    .line 705
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, v2, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    goto :goto_2

    .line 707
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, p3, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 708
    iget-object p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez p3, :cond_b

    .line 709
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p2, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_2

    .line 713
    :cond_6
    iget-object p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    sget v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerModeMinLevel:I

    if-ne p3, v0, :cond_7

    .line 714
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    invoke-interface {p0, p2, p3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_2

    .line 716
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p2, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_2

    .line 721
    :cond_8
    iget-object p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v0, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-ne v0, p3, :cond_9

    move v2, v3

    .line 722
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_a

    .line 723
    iget p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    goto :goto_1

    :cond_a
    iget-object p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 722
    :goto_1
    invoke-interface {p0, p2, p3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    :cond_b
    :goto_2
    const-wide/16 p2, 0x0

    .line 725
    iput-wide p2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->userAttempt:J

    return-void
.end method

.method private synthetic lambda$initSettingsH$10(Landroid/view/View;)V
    .locals 1

    .line 914
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    .line 915
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v0, "mSettingsOpSettingsIcon click"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-nez p1, :cond_3

    :cond_2
    return-void

    .line 918
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 919
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 920
    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private synthetic lambda$initSettingsH$4(I)V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 783
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$initSettingsH$5(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x8

    .line 797
    invoke-static {v0, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 799
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    .line 800
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v0, "mSettingsIcon click"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-eqz p1, :cond_3

    :cond_2
    return-void

    .line 810
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideCaptionsTooltipImmediately()V

    .line 812
    iget-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    iput-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpLastforceExpandState:Z

    const/4 p1, 0x1

    .line 813
    iput-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    .line 814
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    .line 816
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->loadOpDimens()V

    .line 818
    iget p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    .line 819
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method private synthetic lambda$initSettingsH$6(I)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 849
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$initSettingsH$7(Landroid/view/View;)V
    .locals 1

    .line 867
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    .line 868
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v0, "mSettingsBackIcon click"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-nez p1, :cond_3

    :cond_2
    return-void

    .line 871
    :cond_3
    iput-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpLastforceExpandState:Z

    const/4 p1, 0x0

    .line 872
    iput-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    const/4 p1, 0x1

    .line 873
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    .line 874
    iget p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    .line 876
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method private synthetic lambda$initSettingsH$8(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 898
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initSettingsH$9(I)V
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 903
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showCaptionsTooltip$13(Landroid/view/View;)V
    .locals 0

    .line 1008
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideCaptionsTooltip()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const/16 p1, 0x16

    .line 1009
    invoke-static {p1, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showCaptionsTooltip$14()V
    .locals 3

    .line 1040
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "tool:checkODICaptionsTooltip() putBoolean true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODIDebug:Z

    if-nez v0, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "HasSeenODICaptionsTooltip"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1045
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    if-eqz v0, :cond_2

    .line 1050
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getSinglePressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateCaptionsIcon$16(Z)V
    .locals 0

    .line 1153
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->setOptedOut(Z)V

    return-void
.end method

.method static synthetic lambda$updateRowsH$19()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$updateRowsH$20()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$updateRowsH$21()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$updateRowsH$22(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 2

    .line 1595
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1597
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1598
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic lambda$updateRowsH$23(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 2

    .line 1610
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1612
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1613
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic lambda$updateRowsH$24(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 2

    .line 1626
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1628
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1629
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method private maybeShowToastH(I)V
    .locals 11

    .line 1188
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "RingerGuidanceCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0xc

    if-le v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1

    .line 1209
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x1040820

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1196
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-eqz p1, :cond_3

    .line 1198
    iget-object v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->volume_dialog_ringer_guidance_ring:I

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    int-to-long v7, v7

    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    int-to-long v9, p1

    .line 1200
    invoke-static {v7, v8, v9, v10}, Lcom/android/settingslib/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    .line 1198
    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1204
    :cond_2
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x104081f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1213
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    add-int/2addr v0, v4

    .line 1215
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private onCaptionIconClicked()V
    .locals 2

    .line 1158
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->areCaptionsEnabled()Z

    move-result v0

    .line 1159
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setCaptionsEnabled(Z)V

    .line 1160
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateCaptionsIcon()V

    return-void
.end method

.method private opExpandAnim(Z)V
    .locals 11

    .line 1710
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 1711
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "init mAnimVol init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1714
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    .line 1715
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_dialog_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1716
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz p1, :cond_1

    .line 1720
    iget p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpBeforeExpandWidth:I

    .line 1721
    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    goto :goto_0

    .line 1723
    :cond_1
    iget p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    .line 1724
    iget v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpBeforeExpandWidth:I

    :goto_0
    move v8, p1

    move p1, v1

    .line 1727
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x113

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1728
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v2, v5, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1729
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/systemui/volume/VolumeDialogImpl$5;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v7

    move v4, v8

    move-object v5, v0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/volume/VolumeDialogImpl$5;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/ViewGroup$LayoutParams;ILandroid/view/ViewGroup;I)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1765
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/systemui/volume/VolumeDialogImpl$6;

    move-object v1, v10

    move v3, p1

    move-object v5, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/volume/VolumeDialogImpl$6;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;IILandroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private provideTouchFeedbackH(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 1180
    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    goto :goto_0

    .line 1173
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/VolumeDialogController;->scheduleTouchFeedback()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1176
    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 1183
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_2
    return-void
.end method

.method private recheckH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 3

    if-nez p1, :cond_1

    .line 2247
    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v0, "recheckH ALL"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 2249
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 2250
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    .line 2253
    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recheckH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    :cond_3
    return-void
.end method

.method private setDismissDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 1326
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    return-void
.end method

.method private setStreamImportantH(IZ)V
    .locals 2

    .line 2259
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 2260
    iget v1, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v1, p1, :cond_0

    .line 2262
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setStreamImportantH stream:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " important:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    iput-boolean p2, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->important:Z

    :cond_1
    return-void
.end method

.method private shouldBeVisibleH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)Z
    .locals 5

    .line 1409
    iget v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    iget v1, p2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v3

    .line 1415
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowActiveStreamOnly:Z

    if-nez v0, :cond_5

    .line 1416
    iget v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1417
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p0

    .line 1422
    :cond_2
    iget v4, p2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v4, v1, :cond_3

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    if-ne v0, v4, :cond_3

    return v3

    .line 1427
    :cond_3
    iget-boolean p1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->defaultStream:Z

    if-eqz p1, :cond_5

    .line 1428
    iget p1, p2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_4

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 1432
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2
.end method

.method private showActiveStreamOnly()Z
    .locals 2

    .line 1404
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1405
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.television"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

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

.method private showH(I)V
    .locals 5

    .line 1230
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mPendingInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1233
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1234
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1237
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1238
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    .line 1240
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 1241
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1245
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mPendingInit:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    .line 1247
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    move v0, v1

    .line 1250
    :cond_2
    iput-boolean v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mPendingInit:Z

    :cond_3
    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    if-nez v0, :cond_4

    .line 1255
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    .line 1261
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH()V

    .line 1262
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 1265
    invoke-virtual {p0, v3}, Lcom/oneplus/volume/OpVolumeDialogImpl;->applyColorTheme(Z)V

    .line 1268
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 1269
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-array v0, v2, [Ljava/lang/Object;

    .line 1270
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v3, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 1271
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 1272
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    .line 1273
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->checkODICaptionsTooltip(Z)V

    .line 1276
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpOutputChooser:Lcom/oneplus/volume/OpOutputChooser;

    if-nez p1, :cond_5

    .line 1277
    new-instance p1, Lcom/oneplus/volume/OpOutputChooser;

    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/oneplus/volume/OpOutputChooser;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpOutputChooser:Lcom/oneplus/volume/OpOutputChooser;

    .line 1278
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserCallback:Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;

    invoke-virtual {p1, v0}, Lcom/oneplus/volume/OpOutputChooser;->addCallback(Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;)V

    .line 1280
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1281
    iget p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    goto :goto_1

    :cond_6
    const/4 p1, -0x2

    .line 1283
    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    .line 1286
    :goto_1
    iput-boolean v3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mFirstTimeInitDialog:Z

    return-void
.end method

.method private showSafetyWarningH(I)V
    .locals 3

    .line 2272
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSafetyWarningH flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 p1, p1, 0x401

    if-nez p1, :cond_0

    .line 2274
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz p1, :cond_2

    .line 2276
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2277
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_1

    .line 2278
    monitor-exit p1

    return-void

    .line 2280
    :cond_1
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$8;

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$8;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 2289
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2290
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 2291
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    .line 2293
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    return-void

    :catchall_0
    move-exception p0

    .line 2290
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private trimObsoleteH()V
    .locals 4

    .line 1878
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "trimObsoleteH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :cond_0
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 1880
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 1881
    iget-object v2, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-eqz v2, :cond_2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 1882
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    iget v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1883
    iget-object v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1884
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1885
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/volume/ConfigurableTexts;->remove(Landroid/widget/TextView;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateCaptionsIcon()V
    .locals 3

    .line 1146
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->areCaptionsEnabled()Z

    move-result v0

    .line 1147
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {v1}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->getCaptionsEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1148
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {v2, v0}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->setCaptionsEnabled(Z)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->isCaptionStreamOptedOut()Z

    move-result v0

    .line 1152
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {v1}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->getOptedOut()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1153
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    new-instance v2, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$DIKiMyXI1bMyTRDvEPHkZewFa_o;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$DIKiMyXI1bMyTRDvEPHkZewFa_o;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private updateODICaptionsH(ZZ)V
    .locals 3

    .line 1112
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    .line 1115
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateODIRelatedLayout()V

    .line 1119
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateODICaptionsH, isServiceComponentEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsOpZenModeOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsOpZenModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    if-eqz p1, :cond_3

    .line 1124
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsOpZenModeOn:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1127
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1128
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1130
    :cond_2
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1134
    :cond_3
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    :goto_0
    if-nez p1, :cond_5

    return-void

    .line 1141
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateCaptionsIcon()V

    if-eqz p2, :cond_6

    .line 1142
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->showCaptionsTooltip()V

    :cond_6
    return-void
.end method

.method private updateRowsH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1440
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateRowsH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_0
    iget-boolean v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v2, :cond_1

    .line 1442
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 1456
    :cond_1
    sget-boolean v2, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_2

    .line 1457
    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRowsH, mOpForceExpandState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mOpLastforceExpandState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpLastforceExpandState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mNeedPlayExpandAnim:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mFirstTimeInitDialog:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mFirstTimeInitDialog:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", activeRow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_2
    iget-object v2, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->op_volume_dialog_panel_width:I

    const/16 v4, 0x438

    invoke-static {v2, v3, v4}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v2

    .line 1466
    iget-boolean v3, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    const-wide/16 v4, 0x1e

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3ecccccd    # 0.4f

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_e

    .line 1467
    iget-object v1, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 1468
    iget v11, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-eq v11, v8, :cond_3

    if-eq v11, v10, :cond_3

    if-eq v11, v9, :cond_3

    if-nez v11, :cond_a

    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1469
    :cond_3
    iget-boolean v11, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mFirstTimeInitDialog:Z

    if-nez v11, :cond_9

    .line 1470
    iget v11, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const-wide/16 v6, 0x113

    if-ne v11, v8, :cond_5

    .line 1473
    iget-object v11, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    sget v8, Lcom/android/systemui/R$id;->volume_row_slider_frame:I

    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 1474
    new-instance v11, Lcom/android/systemui/volume/VolumeDialogImpl$4;

    invoke-direct {v11, v0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$4;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1503
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v8, v15}, Landroid/view/View;->setAlpha(F)V

    .line 1504
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-static {v8, v14}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1506
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1507
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    neg-int v11, v2

    div-int/2addr v11, v10

    int-to-float v11, v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 1509
    :cond_4
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    neg-int v11, v2

    div-int/2addr v11, v9

    int-to-float v11, v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 1512
    :goto_1
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1513
    invoke-virtual {v8, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1514
    invoke-virtual {v8, v15}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1515
    invoke-virtual {v8, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v13, v15, v13, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1516
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$rNQvPZ4v1mumin0xPzfWijGPmaI;->INSTANCE:Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$rNQvPZ4v1mumin0xPzfWijGPmaI;

    .line 1517
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1519
    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_3

    :cond_5
    if-ne v11, v10, :cond_7

    .line 1522
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v8, v15}, Landroid/view/View;->setAlpha(F)V

    .line 1523
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-static {v8, v14}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1525
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1526
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    neg-int v11, v2

    div-int/2addr v11, v10

    int-to-float v11, v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    .line 1528
    :cond_6
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    neg-int v11, v2

    div-int/2addr v11, v9

    int-to-float v11, v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 1531
    :goto_2
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1532
    invoke-virtual {v8, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1533
    invoke-virtual {v8, v15}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1534
    invoke-virtual {v8, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v13, v15, v13, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1535
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$m26Kv58I4TUt4m4TU2mNQQsVCVc;->INSTANCE:Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$m26Kv58I4TUt4m4TU2mNQQsVCVc;

    .line 1536
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v7, 0x3c

    .line 1538
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    :cond_7
    if-nez v11, :cond_8

    .line 1541
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1542
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v8, v15}, Landroid/view/View;->setAlpha(F)V

    .line 1543
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-static {v8, v14}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1544
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    neg-int v11, v2

    div-int/2addr v11, v10

    int-to-float v11, v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 1545
    iget-object v8, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1546
    invoke-virtual {v8, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1547
    invoke-virtual {v8, v15}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1548
    invoke-virtual {v8, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v13, v15, v13, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1549
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$CGNjjawdA5MPOVXXrPSL0CwlAlM;->INSTANCE:Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$CGNjjawdA5MPOVXXrPSL0CwlAlM;

    .line 1550
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v7, 0x5a

    .line 1552
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .line 1557
    :cond_8
    iget-object v6, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-static {v6, v14}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    goto :goto_3

    .line 1560
    :cond_9
    iget-object v6, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-static {v6, v14}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1563
    :goto_3
    iget-object v6, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1564
    invoke-direct {v0, v3, v14, v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ZZ)V

    :cond_a
    const/4 v8, 0x2

    goto/16 :goto_0

    .line 1569
    :cond_b
    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    if-eqz v1, :cond_d

    .line 1570
    invoke-direct {v0, v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->opExpandAnim(Z)V

    .line 1571
    iget-boolean v1, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    if-eqz v1, :cond_d

    .line 1572
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_c

    .line 1573
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAnimVol.start, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_c
    invoke-virtual {v0, v14}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setOpOutputChooserGravityNeedBeforeAnimStart(Z)V

    .line 1576
    invoke-virtual {v0, v14}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setOpOutputChooserVisible(Z)V

    .line 1577
    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_d
    const/4 v1, 0x0

    .line 1582
    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    goto/16 :goto_b

    :cond_e
    if-nez v3, :cond_1c

    .line 1585
    iget-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    if-eqz v3, :cond_15

    .line 1586
    iget-object v1, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 1587
    iget v6, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const-wide/16 v7, 0xaf

    const/4 v9, 0x2

    if-ne v6, v9, :cond_10

    .line 1588
    iget-object v6, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1589
    invoke-virtual {v6, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v11, v2

    div-int/lit8 v11, v11, 0x5

    int-to-float v11, v11

    .line 1590
    invoke-virtual {v6, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1591
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v13, v15, v13, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1592
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$MpNJ24ayoduzmAFeDFV4eMtPu04;

    invoke-direct {v7, v3}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$MpNJ24ayoduzmAFeDFV4eMtPu04;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    .line 1593
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v6, 0x3c

    .line 1600
    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    :cond_10
    if-ne v6, v10, :cond_11

    .line 1603
    iget-object v6, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1604
    invoke-virtual {v6, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v11, v2

    div-int/lit8 v11, v11, 0x5

    int-to-float v11, v11

    .line 1605
    invoke-virtual {v6, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1606
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v13, v15, v13, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1607
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$uTzBYZgj9yTHnMEMjuHMHE4EwAI;

    invoke-direct {v7, v3}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$uTzBYZgj9yTHnMEMjuHMHE4EwAI;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    .line 1608
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1615
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    :cond_11
    if-nez v6, :cond_f

    .line 1618
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1619
    iget-object v6, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1620
    invoke-virtual {v6, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v11, v2

    div-int/lit8 v11, v11, 0x5

    int-to-float v11, v11

    .line 1621
    invoke-virtual {v6, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1622
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v13, v15, v13, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1623
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$5x76B-GMRRmIBDZfWPK8_p6CN4k;

    invoke-direct {v7, v3}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$5x76B-GMRRmIBDZfWPK8_p6CN4k;-><init>(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    .line 1624
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1631
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_4

    .line 1635
    :cond_12
    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    .line 1636
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->opExpandAnim(Z)V

    .line 1637
    iget-boolean v2, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mIsExpandAnimDone:Z

    if-eqz v2, :cond_14

    .line 1639
    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x3c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1641
    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimVol:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_13
    const/4 v1, 0x0

    .line 1644
    :cond_14
    :goto_5
    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mNeedPlayExpandAnim:Z

    goto/16 :goto_b

    .line 1647
    :cond_15
    iget-object v2, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    if-nez v1, :cond_18

    .line 1652
    iget v4, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v4, v9, :cond_17

    move v4, v14

    goto :goto_7

    :cond_17
    const/4 v4, 0x0

    :goto_7
    move v5, v4

    goto :goto_9

    :cond_18
    if-ne v3, v1, :cond_19

    move v4, v14

    goto :goto_8

    :cond_19
    const/4 v4, 0x0

    .line 1656
    :goto_8
    invoke-direct {v0, v3, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->shouldBeVisibleH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)Z

    move-result v5

    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    .line 1659
    :goto_9
    iget-object v6, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-static {v6, v4}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1662
    iget v4, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-eq v4, v9, :cond_1b

    if-eqz v5, :cond_1b

    .line 1663
    iget-object v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 1664
    iget v6, v5, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v6, v9, :cond_1a

    .line 1665
    iget-object v5, v5, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    goto :goto_a

    :cond_1a
    const/4 v6, 0x0

    goto :goto_a

    :cond_1b
    const/4 v6, 0x0

    .line 1671
    iget-object v4, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1673
    invoke-direct {v0, v3, v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;Z)V

    goto :goto_6

    .line 1702
    :cond_1c
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH()V

    return-void
.end method

.method private updateVolumeRowH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1946
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    const-string/jumbo v3, "updateVolumeRowH s="

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-nez v2, :cond_1

    return-void

    .line 1948
    :cond_1
    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    iget v4, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v2, :cond_2

    return-void

    .line 1950
    :cond_2
    iput-object v2, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 1953
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportSOCThreekey()Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_3

    .line 1954
    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-lez v4, :cond_5

    .line 1955
    iput v4, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    goto :goto_0

    .line 1958
    :cond_3
    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-lez v4, :cond_4

    iget v6, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-eq v6, v5, :cond_4

    .line 1959
    iput v4, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    goto :goto_0

    .line 1960
    :cond_4
    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    sget v6, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerModeMinLevel:I

    if-le v4, v6, :cond_5

    iget v6, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v6, v5, :cond_5

    .line 1961
    iput v4, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    .line 1962
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateVolumeRowH, lastAudibleLevel = ss.level:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :cond_5
    :goto_0
    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    iget v6, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->requestedLevel:I

    if-ne v4, v6, :cond_6

    const/4 v4, -0x1

    .line 1968
    iput v4, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->requestedLevel:I

    .line 1970
    :cond_6
    iget v4, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const/16 v6, 0xa

    const/4 v8, 0x1

    if-ne v4, v6, :cond_7

    move v4, v8

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    .line 1971
    :goto_1
    iget v6, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v6, v5, :cond_8

    move v6, v8

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    .line 1972
    :goto_2
    iget v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v9, v8, :cond_9

    move v9, v8

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    .line 1973
    :goto_3
    iget v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_a

    move v10, v8

    goto :goto_4

    :cond_a
    const/4 v10, 0x0

    .line 1974
    :goto_4
    iget v11, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_b

    move v11, v8

    goto :goto_5

    :cond_b
    const/4 v11, 0x0

    .line 1976
    :goto_5
    iget v13, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-eqz v6, :cond_c

    .line 1978
    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v13, v13, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v13, v8, :cond_c

    move v13, v8

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    :goto_6
    if-eqz v6, :cond_d

    .line 1980
    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v14, v14, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v14, :cond_d

    move v14, v8

    goto :goto_7

    :cond_d
    const/4 v14, 0x0

    .line 1982
    :goto_7
    iget-object v15, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v15, v15, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v15, v8, :cond_e

    move v15, v8

    goto :goto_8

    :cond_e
    const/4 v15, 0x0

    .line 1983
    :goto_8
    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v7, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v7, v12, :cond_f

    move v7, v8

    goto :goto_9

    :cond_f
    const/4 v7, 0x0

    .line 1984
    :goto_9
    iget-object v12, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v12, v12, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v12, v5, :cond_10

    move v12, v8

    goto :goto_a

    :cond_10
    const/4 v12, 0x0

    :goto_a
    if-eqz v7, :cond_12

    if-nez v6, :cond_11

    if-eqz v9, :cond_17

    :cond_11
    :goto_b
    move v7, v8

    goto :goto_c

    :cond_12
    if-eqz v12, :cond_13

    if-nez v6, :cond_11

    if-nez v9, :cond_11

    if-nez v10, :cond_11

    if-eqz v11, :cond_17

    goto :goto_b

    :cond_13
    if-eqz v15, :cond_17

    if-eqz v10, :cond_14

    .line 1987
    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v7, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    if-nez v7, :cond_11

    :cond_14
    if-eqz v11, :cond_15

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v7, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    if-nez v7, :cond_11

    :cond_15
    if-eqz v6, :cond_16

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v7, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-nez v7, :cond_11

    :cond_16
    if-eqz v9, :cond_17

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v7, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    if-eqz v7, :cond_17

    goto :goto_b

    :cond_17
    const/4 v7, 0x0

    .line 1994
    :goto_c
    iget v9, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    mul-int/lit8 v9, v9, 0x64

    .line 1995
    iget-object v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    if-eq v9, v10, :cond_18

    .line 1996
    iget-object v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v10, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1999
    :cond_18
    iget v9, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    mul-int/lit8 v9, v9, 0x64

    .line 2004
    iget-object v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMin()I

    move-result v10

    if-eq v9, v10, :cond_19

    iget v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-eqz v10, :cond_19

    .line 2005
    iget-object v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v10, v9}, Landroid/widget/SeekBar;->setMin(I)V

    .line 2010
    :cond_19
    sget-boolean v9, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v9, :cond_1a

    sget-object v9, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " min:"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ss.muted:"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_1a
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/settingslib/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 2015
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    iget-object v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2016
    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    iget v10, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v3, v9, v10}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 2019
    iget-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-nez v3, :cond_1b

    iget-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    if-eqz v3, :cond_1c

    :cond_1b
    if-nez v7, :cond_1c

    move v3, v8

    goto :goto_d

    :cond_1c
    const/4 v3, 0x0

    .line 2020
    :goto_d
    iget-object v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    invoke-virtual {v9, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2021
    iget-object v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1d

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_1d
    const/high16 v10, 0x3f000000    # 0.5f

    :goto_e
    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setAlpha(F)V

    if-eqz v13, :cond_1e

    .line 2023
    sget v9, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    goto :goto_10

    :cond_1e
    if-nez v14, :cond_23

    if-eqz v7, :cond_1f

    goto :goto_f

    .line 2025
    :cond_1f
    iget-boolean v9, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-eqz v9, :cond_21

    .line 2026
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->isStreamMuted(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Z

    move-result v9

    if-eqz v9, :cond_20

    sget v9, Lcom/android/systemui/R$drawable;->ic_volume_media_bt_mute:I

    goto :goto_10

    .line 2027
    :cond_20
    sget v9, Lcom/android/systemui/R$drawable;->ic_volume_media_bt:I

    goto :goto_10

    .line 2028
    :cond_21
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->isStreamMuted(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Z

    move-result v9

    if-eqz v9, :cond_22

    iget v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconMuteRes:I

    goto :goto_10

    :cond_22
    iget v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconRes:I

    goto :goto_10

    .line 2024
    :cond_23
    :goto_f
    iget v9, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconMuteRes:I

    .line 2029
    :goto_10
    iget-object v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    invoke-virtual {v10, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2031
    sget v10, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    if-ne v9, v10, :cond_24

    const/4 v5, 0x3

    goto :goto_12

    .line 2032
    :cond_24
    sget v10, Lcom/android/systemui/R$drawable;->ic_volume_media_bt_mute:I

    if-eq v9, v10, :cond_28

    iget v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconMuteRes:I

    if-ne v9, v10, :cond_25

    goto :goto_12

    .line 2034
    :cond_25
    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_media_bt:I

    if-eq v9, v5, :cond_27

    iget v5, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconRes:I

    if-ne v9, v5, :cond_26

    goto :goto_11

    :cond_26
    const/4 v5, 0x0

    goto :goto_12

    :cond_27
    :goto_11
    move v5, v8

    .line 2036
    :cond_28
    :goto_12
    iput v5, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->iconState:I

    if-eqz v3, :cond_32

    if-eqz v6, :cond_2d

    if-eqz v13, :cond_29

    .line 2040
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    iget-object v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_unmute:I

    new-array v9, v8, [Ljava/lang/Object;

    .line 2042
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v9, v10

    .line 2040
    invoke-virtual {v4, v5, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 2044
    :cond_29
    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2045
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    iget-object v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 2046
    iget-boolean v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v5, :cond_2a

    .line 2047
    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_vibrate_a11y:I

    goto :goto_13

    .line 2048
    :cond_2a
    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_vibrate:I

    :goto_13
    new-array v9, v8, [Ljava/lang/Object;

    .line 2049
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v9, v10

    .line 2045
    invoke-virtual {v4, v5, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 2051
    :cond_2b
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    iget-object v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 2052
    iget-boolean v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v5, :cond_2c

    .line 2053
    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_mute_a11y:I

    goto :goto_14

    .line 2054
    :cond_2c
    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_mute:I

    :goto_14
    new-array v9, v8, [Ljava/lang/Object;

    .line 2055
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v9, v10

    .line 2051
    invoke-virtual {v4, v5, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_2d
    if-eqz v4, :cond_2e

    .line 2059
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_15
    const/4 v10, 0x0

    goto :goto_18

    .line 2061
    :cond_2e
    iget-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-nez v3, :cond_31

    iget-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v3, :cond_2f

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v3, :cond_2f

    goto :goto_17

    .line 2066
    :cond_2f
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    iget-object v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 2067
    iget-boolean v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v5, :cond_30

    .line 2068
    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_mute_a11y:I

    goto :goto_16

    .line 2069
    :cond_30
    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_mute:I

    :goto_16
    new-array v9, v8, [Ljava/lang/Object;

    .line 2070
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v9, v10

    .line 2066
    invoke-virtual {v4, v5, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_31
    :goto_17
    const/4 v10, 0x0

    .line 2062
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    iget-object v4, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->volume_stream_content_description_unmute:I

    new-array v9, v8, [Ljava/lang/Object;

    .line 2064
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v10

    .line 2062
    invoke-virtual {v4, v5, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_32
    const/4 v10, 0x0

    .line 2074
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_18
    if-eqz v7, :cond_33

    .line 2079
    iput-boolean v10, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->tracking:Z

    :cond_33
    xor-int/lit8 v2, v7, 0x1

    .line 2097
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v3, :cond_34

    if-nez v6, :cond_34

    if-nez v7, :cond_34

    move v3, v10

    goto :goto_19

    .line 2098
    :cond_34
    iget-object v3, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    :goto_19
    if-eqz v6, :cond_36

    if-nez v13, :cond_35

    if-eqz v14, :cond_36

    .line 2101
    :cond_35
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportSOCThreekey()Z

    move-result v2

    xor-int/2addr v2, v8

    move v7, v10

    goto :goto_1a

    :cond_36
    move v7, v3

    .line 2107
    :goto_1a
    invoke-direct {v0, v1, v2, v7}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowSliderH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ZI)V

    return-void
.end method

.method private updateVolumeRowSliderH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ZI)V
    .locals 11

    .line 2164
    iget-object v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const/4 v0, 0x1

    .line 2169
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;Z)V

    .line 2171
    iget-boolean v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->tracking:Z

    const-string/jumbo v2, "updateVolumeRowSliderH s="

    if-eqz v1, :cond_1

    .line 2173
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    .line 2174
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is tracking"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 2179
    :cond_1
    iget-object v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 2180
    iget-object v3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-static {v3, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v3

    .line 2181
    iget-object v4, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    move v4, v5

    .line 2182
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->userAttempt:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    move v6, v0

    goto :goto_1

    :cond_3
    move v6, v5

    .line 2184
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v10, 0x3

    invoke-virtual {v7, v10, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2185
    iget-boolean v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v7, :cond_6

    if-eqz v4, :cond_6

    if-eqz v6, :cond_6

    .line 2186
    sget-boolean p2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p2, :cond_4

    sget-object p2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string p3, "inGracePeriod"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    :cond_4
    sget-boolean p2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_5

    .line 2189
    sget-object p2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " inGracePeriod"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {p0, v10, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-wide v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->userAttempt:J

    add-long/2addr v0, v8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_6
    if-ne p3, v3, :cond_8

    .line 2197
    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v6, :cond_8

    if-eqz v4, :cond_8

    .line 2199
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_7

    .line 2200
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vlevel: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " level: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    mul-int/lit8 p3, p3, 0x64

    .line 2208
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_9

    .line 2209
    sget-object v3, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " progress: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newProgress: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enable: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eq v1, p3, :cond_f

    .line 2213
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz p0, :cond_d

    if-eqz v4, :cond_d

    .line 2215
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_b

    iget p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->animTargetProgress:I

    if-ne p0, p3, :cond_b

    .line 2218
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_a

    .line 2219
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateVolumeRowSliderH already animating to the target progress"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    .line 2225
    :cond_b
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    const/4 p2, 0x2

    if-nez p0, :cond_c

    .line 2226
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    new-array p2, p2, [I

    aput v1, p2, v5

    aput p3, p2, v0

    const-string v0, "progress"

    invoke-static {p0, v0, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    iput-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 2227
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .line 2229
    :cond_c
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2230
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    new-array p2, p2, [I

    aput v1, p2, v5

    aput p3, p2, v0

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 2232
    :goto_2
    iput p3, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->animTargetProgress:I

    .line 2233
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    const-wide/16 p2, 0x50

    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2234
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    .line 2237
    :cond_d
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_e

    .line 2238
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2240
    :cond_e
    iget-object p0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p0, p3, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_f
    :goto_3
    return-void
.end method

.method private updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2116
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ZZ)V

    return-void
.end method

.method private updateVolumeRowTintH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 2123
    iget-object v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 2133
    :cond_0
    iget v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mAccentColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 2136
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    goto :goto_0

    :cond_1
    const p2, 0x1010553

    .line 2137
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getAlphaAttr(I)I

    .line 2142
    :goto_0
    iget-object p2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->cachedTint:Landroid/content/res/ColorStateList;

    if-ne v0, p2, :cond_2

    iget p2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorMode:I

    iget v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->themeColorMode:I

    if-ne p2, v1, :cond_2

    if-nez p3, :cond_2

    return-void

    .line 2145
    :cond_2
    iget-object p2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2146
    iget-object p2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 2155
    iput-object v0, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->cachedTint:Landroid/content/res/ColorStateList;

    .line 2157
    iget-object p2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    iget-object p3, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2158
    iget p2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorMode:I

    iput p2, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->themeColorMode:I

    .line 2159
    iget-object p1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    return-void
.end method


# virtual methods
.method composeWindowTitle()Ljava/lang/CharSequence;
    .locals 4

    .line 1942
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->volume_dialog_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object v3

    iget-object v3, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 312
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected dismissH(I)V
    .locals 5

    .line 1330
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 1331
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDialog.dismiss() reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mIsAnimatingDismiss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1331
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->isStatusBarShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x1

    .line 1349
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 1350
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1351
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 1352
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    new-array v2, v0, [Ljava/lang/Object;

    .line 1354
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 1356
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 1357
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1358
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1359
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1362
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    neg-int v1, v1

    :goto_0
    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0xfa

    .line 1363
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    .line 1365
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$a7-wxVi216tvuQimiidzElZQq3M;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$a7-wxVi216tvuQimiidzElZQq3M;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1366
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1386
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1387
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1388
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1389
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1392
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1393
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->checkODICaptionsTooltip(Z)V

    .line 1395
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1396
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_8

    .line 1397
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "SafetyWarning dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1400
    :cond_8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 1

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    .line 300
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-virtual {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->init()V

    .line 302
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 303
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 305
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public initRingerH()V
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 940
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAccessibilityLiveRegion(I)V

    .line 941
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$wxx-1NamOLWvH0efv0Fvn1ZXt8A;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$wxx-1NamOLWvH0efv0Fvn1ZXt8A;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 980
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    return-void
.end method

.method public initSettingsH()V
    .locals 14

    .line 733
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 734
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "initSettingsH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogRowContainerBottom:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 739
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsOpZenModeOn:Z

    if-nez v3, :cond_1

    .line 740
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 742
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogRowContainerBottom:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 745
    :cond_2
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogRowContainerBottom:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 751
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x113

    const v7, 0x3ecccccd    # 0.4f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v0, :cond_c

    .line 761
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 759
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 760
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 765
    :goto_1
    sget-boolean v11, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_5

    sget-object v11, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initSettingsH, targetBottomSettingsIconVisible: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", mTargetBottomSettingsIconVisible:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsIconVisible:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_5
    iget v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsIconVisible:I

    if-eq v11, v0, :cond_a

    .line 768
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsIconVisible:I

    if-nez v0, :cond_6

    .line 772
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 775
    :cond_6
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    if-ne v0, v2, :cond_7

    move v12, v9

    goto :goto_2

    :cond_7
    move v12, v10

    .line 776
    :goto_2
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    if-ne v0, v2, :cond_8

    move v12, v8

    goto :goto_3

    :cond_8
    move v12, v10

    .line 777
    :goto_3
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    if-ne v0, v2, :cond_9

    move v12, v8

    goto :goto_4

    :cond_9
    move v12, v10

    .line 778
    :goto_4
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    .line 779
    invoke-virtual {v11, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v12, Landroid/view/animation/PathInterpolator;

    invoke-direct {v12, v7, v9, v7, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 780
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$tYqu_SzICRK6KaTw5NCx1axBwhY;

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$tYqu_SzICRK6KaTw5NCx1axBwhY;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 781
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 786
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_6

    .line 790
    :cond_a
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 791
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    if-ne v0, v2, :cond_b

    move v0, v9

    goto :goto_5

    :cond_b
    move v0, v10

    :goto_5
    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    .line 795
    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_d

    .line 796
    new-instance v11, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$yhKa93yBvDMghPsrninv77nitIM;

    invoke-direct {v11, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$yhKa93yBvDMghPsrninv77nitIM;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 827
    iget-boolean v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_7

    :cond_e
    move v0, v2

    .line 833
    :goto_7
    iget v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsBackIconVisible:I

    if-eq v11, v0, :cond_13

    .line 834
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsBackIconVisible:I

    if-nez v0, :cond_f

    .line 838
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 841
    :cond_f
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    if-ne v0, v2, :cond_10

    move v12, v9

    goto :goto_8

    :cond_10
    move v12, v10

    .line 842
    :goto_8
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    if-ne v0, v2, :cond_11

    move v12, v8

    goto :goto_9

    :cond_11
    move v12, v10

    .line 843
    :goto_9
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    if-ne v0, v2, :cond_12

    move v12, v8

    goto :goto_a

    :cond_12
    move v12, v10

    .line 844
    :goto_a
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    .line 845
    invoke-virtual {v11, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v12, Landroid/view/animation/PathInterpolator;

    invoke-direct {v12, v7, v9, v7, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 846
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$s2Cuv-jqDV5qd2d-dbjuR_YugHQ;

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$s2Cuv-jqDV5qd2d-dbjuR_YugHQ;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 847
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 851
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_c

    .line 854
    :cond_13
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 855
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackView:Landroid/view/View;

    if-ne v0, v2, :cond_14

    move v0, v9

    goto :goto_b

    :cond_14
    move v0, v10

    :goto_b
    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    .line 858
    :cond_15
    :goto_c
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_17

    .line 860
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 861
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackIcon:Landroid/widget/ImageButton;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setRotation(F)V

    goto :goto_d

    .line 863
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 866
    :goto_d
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsBackIcon:Landroid/widget/ImageButton;

    new-instance v11, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$_tPh_IeO5Q_gkFTTSsZazreKzHw;

    invoke-direct {v11, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$_tPh_IeO5Q_gkFTTSsZazreKzHw;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 882
    iget-boolean v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-eqz v0, :cond_18

    goto :goto_e

    :cond_18
    move v1, v2

    .line 888
    :goto_e
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsOpSettingsIconVisible:I

    if-eq v0, v1, :cond_1e

    .line 889
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTargetBottomSettingsOpSettingsIconVisible:I

    .line 890
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-ne v1, v2, :cond_19

    move v11, v9

    goto :goto_f

    :cond_19
    move v11, v10

    .line 891
    :goto_f
    invoke-virtual {v0, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-ne v1, v2, :cond_1a

    move v11, v8

    goto :goto_10

    :cond_1a
    move v11, v10

    .line 892
    :goto_10
    invoke-virtual {v0, v11}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-ne v1, v2, :cond_1b

    goto :goto_11

    :cond_1b
    move v8, v10

    .line 893
    :goto_11
    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 894
    iget-boolean v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-eqz v2, :cond_1c

    goto :goto_12

    :cond_1c
    const-wide/16 v5, 0x78

    :goto_12
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v7, v9, v7, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 895
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$3q1KL3g4O5A3gVZ4JD2dByVrkNI;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$3q1KL3g4O5A3gVZ4JD2dByVrkNI;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 896
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$3i1zvcqG_4mrqN_GeZ7K60UeisA;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$3i1zvcqG_4mrqN_GeZ7K60UeisA;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 901
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 905
    iget-boolean v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpForceExpandState:Z

    if-eqz v1, :cond_1d

    const-wide/16 v3, 0x5b

    :cond_1d
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_14

    .line 908
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 909
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsView:Landroid/view/View;

    if-ne v1, v2, :cond_1f

    goto :goto_13

    :cond_1f
    move v9, v10

    :goto_13
    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 912
    :cond_20
    :goto_14
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsOpSettingsIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_21

    .line 913
    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$vFGDLS9dLMW9Hn6QccZRosNtBGU;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$vFGDLS9dLMW9Hn6QccZRosNtBGU;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_21
    return-void
.end method

.method public synthetic lambda$dismissH$17$VolumeDialogImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$dismissH$17()V

    return-void
.end method

.method public synthetic lambda$dismissH$18$VolumeDialogImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$dismissH$18()V

    return-void
.end method

.method public synthetic lambda$getSinglePressFor$25$VolumeDialogImpl(Landroid/widget/ImageButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$getSinglePressFor$25(Landroid/widget/ImageButton;)V

    return-void
.end method

.method public synthetic lambda$hideCaptionsTooltip$15$VolumeDialogImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$hideCaptionsTooltip$15()V

    return-void
.end method

.method public synthetic lambda$initDialog$0$VolumeDialogImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initDialog$0()V

    return-void
.end method

.method public synthetic lambda$initDialog$1$VolumeDialogImpl(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic lambda$initDialog$2$VolumeDialogImpl(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initDialog$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$initODICaptionsH$12$VolumeDialogImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initODICaptionsH$12()V

    return-void
.end method

.method public synthetic lambda$initRingerH$11$VolumeDialogImpl(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initRingerH$11(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initRow$3$VolumeDialogImpl(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initRow$3(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;ILandroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initSettingsH$10$VolumeDialogImpl(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initSettingsH$10(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initSettingsH$4$VolumeDialogImpl(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initSettingsH$4(I)V

    return-void
.end method

.method public synthetic lambda$initSettingsH$5$VolumeDialogImpl(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initSettingsH$5(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initSettingsH$6$VolumeDialogImpl(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initSettingsH$6(I)V

    return-void
.end method

.method public synthetic lambda$initSettingsH$7$VolumeDialogImpl(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initSettingsH$7(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initSettingsH$8$VolumeDialogImpl(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initSettingsH$8(I)V

    return-void
.end method

.method public synthetic lambda$initSettingsH$9$VolumeDialogImpl(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initSettingsH$9(I)V

    return-void
.end method

.method public synthetic lambda$showCaptionsTooltip$13$VolumeDialogImpl(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$showCaptionsTooltip$13(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showCaptionsTooltip$14$VolumeDialogImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$showCaptionsTooltip$14()V

    return-void
.end method

.method public synthetic lambda$updateCaptionsIcon$16$VolumeDialogImpl(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$updateCaptionsIcon$16(Z)V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 2

    .line 2682
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "onOverlayChanged be trigger in vol"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 2683
    invoke-virtual {p0, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->applyColorTheme(Z)V

    return-void
.end method

.method protected onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 10

    .line 1892
    const-class v0, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-virtual {v0}, Lcom/oneplus/scene/OpSceneModeObserver;->isInBrickMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsOpZenModeOn:Z

    .line 1895
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "onStateChangedH() state: "

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsOpZenModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsOpZenModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-eq v0, v2, :cond_2

    if-ne v2, v1, :cond_2

    .line 1901
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate(Landroid/os/VibrationEffect;)V

    .line 1903
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 1905
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    .line 1907
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 1908
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1909
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 1910
    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_3

    goto :goto_1

    .line 1912
    :cond_3
    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onStateChangedH stream:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1915
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->findRow(I)Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1916
    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_remote:I

    sget v6, Lcom/android/systemui/R$drawable;->ic_volume_remote_mute:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZZ)V

    .line 1919
    invoke-virtual {p0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->updateDialogLayout()V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1924
    :cond_5
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-eq v0, p1, :cond_6

    .line 1925
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    .line 1926
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    .line 1927
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object p1

    .line 1928
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    .line 1929
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1931
    :cond_6
    iget-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    .line 1932
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    goto :goto_2

    .line 1934
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    .line 1936
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsCaptionComponentEnabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mFromTooltip:Z

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateODICaptionsH(ZZ)V

    .line 1938
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->composeWindowTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 5

    .line 1291
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1292
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    .line 1293
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 1294
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    .line 1293
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1295
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    return-void
.end method

.method public setAutomute(Z)V
    .locals 1

    .line 572
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 573
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 574
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setSilentMode(Z)V
    .locals 1

    .line 578
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 579
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 580
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setStreamImportant(IZ)V
    .locals 1

    .line 568
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected showCaptionsTooltip()V
    .locals 6

    .line 1005
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 1007
    sget v1, Lcom/android/systemui/R$id;->dismiss:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$XF6c34Qrx7dMvHKAz_Q6TKl64lY;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$XF6c34Qrx7dMvHKAz_Q6TKl64lY;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 1011
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 1012
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1017
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1018
    iget v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOpafterExpandWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->setDialogWidth(I)V

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1023
    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDialogLower:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 1024
    iget v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mODIViewHeight:I

    int-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 1025
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const/16 v3, 0x55

    .line 1026
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1027
    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x53

    .line 1029
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1030
    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1033
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1037
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 1038
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$VfqQNQdyxat1ut-LHF0mfB9W3dg;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$VfqQNQdyxat1ut-LHF0mfB9W3dg;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1039
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1053
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-void
.end method

.method protected tryToRemoveCaptionsTooltip()V
    .locals 2

    .line 1104
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_dialog_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1106
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1107
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected updateRingerH()V
    .locals 7

    .line 1781
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-eqz v0, :cond_a

    .line 1782
    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v0, :cond_0

    return-void

    .line 1787
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    if-eq v3, v1, :cond_2

    if-ne v3, v6, :cond_1

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v6

    :goto_1
    xor-int/lit8 v3, v2, 0x1

    .line 1791
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->enableRingerViewsH(Z)V

    .line 1792
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-eqz v3, :cond_9

    if-eq v3, v6, :cond_8

    .line 1807
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v0, :cond_5

    :cond_4
    move v5, v6

    :cond_5
    if-nez v2, :cond_6

    if-eqz v5, :cond_6

    .line 1809
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1810
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->volume_ringer_hint_unmute:I

    .line 1811
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1810
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 1812
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 1814
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_ringer:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1815
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1816
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->volume_ringer_hint_vibrate:I

    .line 1817
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1816
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_2

    .line 1819
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->volume_ringer_hint_mute:I

    .line 1820
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1819
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 1822
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 1794
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v1, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1795
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->volume_ringer_hint_mute:I

    .line 1796
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1795
    invoke-direct {p0, v0, v6, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 1797
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 1800
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1801
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 1802
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->volume_ringer_hint_unmute:I

    .line 1803
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1802
    invoke-direct {p0, v0, v5, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method
