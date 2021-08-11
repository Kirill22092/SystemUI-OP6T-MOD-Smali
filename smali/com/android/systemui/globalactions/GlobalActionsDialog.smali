.class public Lcom/android/systemui/globalactions/GlobalActionsDialog;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$Callbacks;
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/GlobalActionsDialog$BootloaderAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$AirplaneModeAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAffordanceAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ShutDownAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerOptionsAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;
    }
.end annotation


# static fields
.field static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

.field private mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mControlsControllerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;"
        }
    .end annotation
.end field

.field private mControlsServiceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mControlsUiControllerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

.field private final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field protected mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDialogPressDelay:I

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private mIsWaitingForEcmExit:Z

.field protected final mItems:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMainHandler:Landroid/os/Handler;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

.field private mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

.field protected final mOverflowItems:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;

.field protected final mPowerItems:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private final mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

.field private final mScreenRecordHelper:Lcom/android/internal/util/ScreenRecordHelper;

.field mShowLockScreenCardsAndControls:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

.field private final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field private final mSysuiColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mTrustManager:Landroid/app/trust/TrustManager;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mUserManager:Landroid/os/UserManager;

.field private mWalletPlugin:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

.field private final mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;Landroid/media/AudioManager;Landroid/service/dreams/IDreamManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;Landroid/os/Vibrator;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/UserManager;Landroid/app/trust/TrustManager;Landroid/app/IActivityManager;Landroid/telecom/TelecomManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Landroid/view/IWindowManager;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/util/RingerModeTracker;Lcom/android/systemui/model/SysUiState;Landroid/os/Handler;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/settings/CurrentUserContextTracker;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p10

    move-object/from16 v3, p12

    move-object/from16 v4, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v5, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v5, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mOverflowItems:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    iput-boolean v5, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    sget-object v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    iput-boolean v5, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsWaitingForEcmExit:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsServiceInfos:Ljava/util/List;

    const/16 v6, 0x352

    iput v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialogPressDelay:I

    iput-boolean v5, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowLockScreenCardsAndControls:Z

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;

    invoke-direct {v6, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;

    iget-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/os/Handler;)V

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;

    invoke-direct {v6, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object v6, p2

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-object v6, p3

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    move-object v6, p4

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    move-object v6, p5

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object v6, p6

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v4, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v3, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mResources:Landroid/content/res/Resources;

    move-object/from16 v6, p13

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v6, p16

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v6, p17

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mTrustManager:Landroid/app/trust/TrustManager;

    move-object/from16 v6, p18

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v6, p19

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mTelecomManager:Landroid/telecom/TelecomManager;

    move-object/from16 v6, p20

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v6, p27

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v6, p21

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    move-object/from16 v6, p22

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSysuiColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    move-object/from16 v6, p23

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v6, p24

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual/range {p31 .. p31}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsUiController()Ljava/util/Optional;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsUiControllerOptional:Ljava/util/Optional;

    move-object/from16 v6, p25

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v6, p26

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v6, p28

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    invoke-virtual/range {p31 .. p31}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsController()Ljava/util/Optional;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsControllerOptional:Ljava/util/Optional;

    move-object/from16 v6, p29

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    move-object/from16 v6, p30

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v6, p32

    iput-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v8, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    move-object/from16 v6, p8

    invoke-virtual {v6, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    iget-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v7, 0x1

    move-object/from16 v8, p9

    invoke-virtual {v8, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v8, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    if-eqz p11, :cond_0

    invoke-virtual/range {p11 .. p11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    iput-boolean v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasVibrator:Z

    const v2, 0x11100f9

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    xor-int/2addr v2, v7

    iput-boolean v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    invoke-interface {v2}, Lcom/android/systemui/util/RingerModeTracker;->getRingerMode()Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$Oc85zFR_BxIMuK5QIIQFL1mEP7k;

    invoke-direct {v3, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$Oc85zFR_BxIMuK5QIIQFL1mEP7k;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-virtual {v2, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    new-instance v2, Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-direct {v2, p1}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    new-instance v2, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {v2, p1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/internal/util/ScreenRecordHelper;

    invoke-direct {v2, p1}, Lcom/android/internal/util/ScreenRecordHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mScreenRecordHelper:Lcom/android/internal/util/ScreenRecordHelper;

    iget-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-interface {v4, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-virtual/range {p31 .. p31}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsListingController()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p31 .. p31}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsListingController()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/management/ControlsListingController;

    new-instance v2, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$CClTkFvhiV_NrqsVBTNb0hamlf8;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$CClTkFvhiV_NrqsVBTNb0hamlf8;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->onPowerMenuLockScreenSettingsChanged()V

    iget-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_menu_locked_show_content"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;

    iget-object v4, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/util/EmergencyAffordanceManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/telecom/TelecomManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialogPressDelay:I

    return p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/util/ScreenRecordHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mScreenRecordHelper:Lcom/android/internal/util/ScreenRecordHelper;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/app/IActivityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIActivityManager:Landroid/app/IActivityManager;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/pm/UserInfo;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/view/IWindowManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIWindowManager:Landroid/view/IWindowManager;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->lockProfiles()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->shouldShowControls()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsWaitingForEcmExit:Z

    return p0
.end method

.method static synthetic access$3402(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsUiControllerOptional:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->onPowerMenuLockScreenSettingsChanged()V

    return-void
.end method

.method private addActionItem(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getMaxShownPowerItems()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mOverflowItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ">;",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->shouldShowAction(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addPackageToSeededSet(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "SeedingCompleted"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private addUserActions(Ljava/util/List;Landroid/content/pm/UserInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ">;",
            "Landroid/content/pm/UserInfo;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget v3, v7, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_2

    goto :goto_1

    :cond_1
    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v2, v7, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    move-object v5, v2

    new-instance v8, Lcom/android/systemui/globalactions/GlobalActionsDialog$6;

    const v4, 0x10804a2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const-string v3, "Primary"

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    const-string v1, " \u2714"

    goto :goto_4

    :cond_5
    const-string v1, ""

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/globalactions/GlobalActionsDialog$6;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    invoke-direct {p0, p1, v8}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    :cond_1
    return-void
.end method

.method private controlsAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsUiControllerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsUiControllerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/ControlsUiController;

    invoke-interface {v0}, Lcom/android/systemui/controls/ui/ControlsUiController;->getAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsServiceInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createDialog()Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->createActionItems()V

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-direct {v1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

    invoke-direct {v1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;

    invoke-direct {v1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;

    iget-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->setShowingHomeControls(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getWalletViewController()Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    move-result-object v7

    iget-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsUiControllerOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->shouldShowControls()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsUiControllerOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/ui/ControlsUiController;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v13, v1

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    iget-object v4, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    iget-object v6, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

    iget-object v8, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v9, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSysuiColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v10, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v11, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->controlsAvailable()Z

    move-result v12

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    new-instance v15, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$jlxsGoRx8E3djFav9gCad5fjKg0;

    invoke-direct {v15, v0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$jlxsGoRx8E3djFav9gCad5fjKg0;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iget-boolean v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    iget-object v3, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;

    move-object/from16 v17, v3

    move-object v3, v1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;ZLcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/model/SysUiState;Ljava/lang/Runnable;ZLcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->shouldShowLockMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->showLockMessage()V

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v1
.end method

.method private getAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 3

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$4;

    const v1, 0x108031b

    const v2, 0x104037d

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$4;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSettingsAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 3

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$3;

    const v1, 0x1080522

    const v2, 0x1040387

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$3;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 3

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$5;

    const v1, 0x108054c

    const v2, 0x104038b

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$5;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private getWalletViewController()Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWalletPlugin:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;->onPanelShown(Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$Callbacks;Z)Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    move-result-object p0

    return-object p0
.end method

.method private handleShow()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->awakenIfNecessary()V

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->createDialog()Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->prepareDialog()V

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->seedFavorites()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "ActionsDialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->show()V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsShown()V

    return-void
.end method

.method private isAdvancedRebootEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "advanced_reboot"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static synthetic lambda$jlxsGoRx8E3djFav9gCad5fjKg0(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->onRotate()V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsServiceInfos:Ljava/util/List;

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->shouldShowControls()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsUiControllerOptional:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/ui/ControlsUiController;

    invoke-static {p1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->access$500(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Lcom/android/systemui/controls/ui/ControlsUiController;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->shouldShowLockMessage()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->showLockMessage()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$seedFavorites$2(Landroid/content/SharedPreferences;Lcom/android/systemui/controls/controller/SeedResponse;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Controls seeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalActionsDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/SeedResponse;->getAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/SeedResponse;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addPackageToSeededSet(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private lockProfiles()V
    .locals 7

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    if-eq v4, v0, :cond_0

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v2, v1

    :cond_1
    if-eqz v2, :cond_2

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;)V

    return-void
.end method

.method private onPowerMenuLockScreenSettingsChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_menu_locked_show_content"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowLockScreenCardsAndControls:Z

    return-void
.end method

.method private onRotate()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->createActionItems()V

    return-void
.end method

.method private prepareDialog()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->refreshSilentMode()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method private refreshSilentMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasVibrator:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    invoke-interface {v0}, Lcom/android/systemui/util/RingerModeTracker;->getRingerMode()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;)V

    :cond_2
    return-void
.end method

.method private seedFavorites()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsControllerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsServiceInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->config_controlsPreferredPackages:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    invoke-virtual {v1}, Lcom/android/systemui/settings/CurrentUserContextTracker;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "controls_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    const-string v4, "SeedingCompleted"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v5, 0x2

    array-length v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v3, v5, :cond_5

    aget-object v5, v0, v3

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsServiceInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v8, v7, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsControllerOptional:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/controls/controller/ControlsController;

    iget-object v8, v7, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-interface {v6, v8}, Lcom/android/systemui/controls/controller/ControlsController;->countFavoritesForComponent(Landroid/content/ComponentName;)I

    move-result v6

    if-lez v6, :cond_3

    invoke-direct {p0, v1, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addPackageToSeededSet(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v5, v7, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mControlsControllerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    new-instance v2, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$EJt8cxa32l15bNtCDpbH4THSAbg;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$EJt8cxa32l15bNtCDpbH4THSAbg;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/content/SharedPreferences;)V

    invoke-interface {v0, v4, v2}, Lcom/android/systemui/controls/controller/ControlsController;->seedFavoritesForComponents(Ljava/util/List;Ljava/util/function/Consumer;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private shouldShowControls()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowLockScreenCardsAndControls:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->controlsAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method private shouldShowLockMessage()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowLockScreenCardsAndControls:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->controlsAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->walletViewAvailable()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private walletViewAvailable()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getWalletViewController()Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->getPanelContent()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected createActionItems()V
    .locals 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasVibrator:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    :goto_0
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AirplaneModeAction;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$AirplaneModeAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->onAirplaneModeChanged()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mOverflowItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getDefaultActions()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ShutDownAction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ShutDownAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    iget-object v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {v7}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v7

    const-string v8, "emergency"

    if-eqz v7, :cond_1

    new-instance v7, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAffordanceAction;

    invoke-direct {v7, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAffordanceAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v7, 0x0

    move v9, v7

    :goto_1
    array-length v10, v0

    if-ge v9, v10, :cond_13

    aget-object v10, v0, v9

    invoke-virtual {v4, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v11, "power"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-direct {p0, v5, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto/16 :goto_2

    :cond_3
    const-string v11, "airplane"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    invoke-direct {p0, v5, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto/16 :goto_2

    :cond_4
    const-string v11, "bugreport"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;->get()Landroid/content/pm/UserInfo;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->shouldDisplayBugReport(Landroid/content/pm/UserInfo;)Z

    move-result v11

    if-eqz v11, :cond_12

    new-instance v11, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;

    invoke-direct {v11, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-direct {p0, v5, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v11, "silent"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-boolean v11, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    invoke-direct {p0, v5, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v11, "users"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "fw.power_user_switcher"

    invoke-static {v11, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;->get()Landroid/content/pm/UserInfo;

    move-result-object v11

    invoke-direct {p0, v5, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addUserActions(Ljava/util/List;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v11, "settings"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getSettingsAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v11

    invoke-direct {p0, v5, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto/16 :goto_2

    :cond_8
    const-string v11, "lockdown"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;->get()Landroid/content/pm/UserInfo;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->shouldDisplayLockdown(Landroid/content/pm/UserInfo;)Z

    move-result v11

    if-eqz v11, :cond_12

    new-instance v11, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;

    invoke-direct {v11, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-direct {p0, v5, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v11, "voiceassist"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getVoiceAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v11

    invoke-direct {p0, v5, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto/16 :goto_2

    :cond_a
    const-string v11, "assist"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v11

    invoke-direct {p0, v5, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto/16 :goto_2

    :cond_b
    const-string v11, "restart"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-direct {p0, v5, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto/16 :goto_2

    :cond_c
    const-string v11, "screenshot"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    new-instance v11, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;

    invoke-direct {v11, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-direct {p0, v5, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto/16 :goto_2

    :cond_d
    const-string v11, "logout"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v11}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;->get()Landroid/content/pm/UserInfo;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$CurrentUserProvider;->get()Landroid/content/pm/UserInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    if-eqz v11, :cond_12

    new-instance v11, Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;

    invoke-direct {v11, p0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-direct {p0, v5, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto :goto_2

    :cond_e
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    new-instance v11, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;

    invoke-direct {v11, p0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-direct {p0, v5, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto :goto_2

    :cond_f
    const-string v11, "recovery"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isAdvancedRebootEnabled()Z

    move-result v11

    if-eqz v11, :cond_12

    new-instance v11, Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;

    invoke-direct {v11, p0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-direct {p0, v5, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto :goto_2

    :cond_10
    const-string v11, "bootloader"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isAdvancedRebootEnabled()Z

    move-result v11

    if-eqz v11, :cond_12

    new-instance v11, Lcom/android/systemui/globalactions/GlobalActionsDialog$BootloaderAction;

    invoke-direct {v11, p0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$BootloaderAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-direct {p0, v5, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto :goto_2

    :cond_11
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid global action key "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "GlobalActionsDialog"

    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_2
    invoke-virtual {v4, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_13
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    invoke-direct {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addActionItem(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public dismissDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dismissGlobalActionsMenu()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->dismissDialog()V

    return-void
.end method

.method protected getDefaultActions()[Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mResources:Landroid/content/res/Resources;

    const v0, 0x107004c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method protected getMaxShownPowerItems()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$integer;->power_menu_max_columns:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$GlobalActionsDialog(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$new$1$GlobalActionsDialog(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->lambda$new$1(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$seedFavorites$2$GlobalActionsDialog(Landroid/content/SharedPreferences;Lcom/android/systemui/controls/controller/SeedResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->lambda$seedFavorites$2(Landroid/content/SharedPreferences;Lcom/android/systemui/controls/controller/SeedResponse;)V

    return-void
.end method

.method makeBugReportActionForTesting()Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-object v0
.end method

.method makeEmergencyDialerActionForTesting()Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    return-object v0
.end method

.method makeScreenshotActionForTesting()Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_POWER_MENU_CLOSE:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsHidden()V

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setShutdownDialogVisible(Z)V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x620

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_POWER_MENU_OPEN:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setShutdownDialogVisible(Z)V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->refreshDialog()V

    :cond_0
    return-void
.end method

.method setZeroDialogPressDelayForTesting()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialogPressDelay:I

    return-void
.end method

.method shouldDisplayBugReport(Landroid/content/pm/UserInfo;)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "bugreport_in_power_menu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method shouldDisplayLockdown(Landroid/content/pm/UserInfo;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "lockdown_in_power_menu"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p1, 0x4

    if-ne p0, p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method protected shouldShowAction(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->showDuringKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    if-nez p0, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->showBeforeProvisioning()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public showOrHideDialog(ZZLcom/android/systemui/plugins/GlobalActionsPanelPlugin;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWalletPlugin:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsShown()V

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->handleShow()V

    :goto_0
    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method
