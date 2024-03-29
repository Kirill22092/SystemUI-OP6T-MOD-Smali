.class public Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;
.super Ljava/lang/Object;
.source "StatusBarNotificationPresenter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationPresenter;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private lastUidChangingUiMode:I

.field private final mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mDispatchUiModeChangeOnUserSwitched:Z

.field private final mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private final mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mInterruptSuppressor:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

.field private final mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mMaxAllowedKeyguardNotifications:I

.field private mMaxKeyguardNotifications:I

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private final mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

.field private final mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

.field private mReinflateNotificationsOnUserSwitched:Z

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field protected mVrMode:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/InitController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;)V
    .locals 6

    move-object v1, p0

    move-object v0, p1

    move-object v2, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v3, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const-class v3, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const-class v3, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    const-class v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    const-class v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const-class v3, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-class v3, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const-class v3, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    const-class v3, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const-class v3, Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/notification/OpNotificationController;

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    const/4 v3, -0x1

    iput v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->lastUidChangingUiMode:I

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mInterruptSuppressor:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    move-object/from16 v3, p10

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v3, p2

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-object v3, p3

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object v3, p9

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-object/from16 v3, p11

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-object/from16 v3, p12

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v3, p13

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v3, p14

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    new-instance v3, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    invoke-direct {v3, p5}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;-><init>(Landroid/view/ViewGroup;)V

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    move-object v4, p8

    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    sget v4, Lcom/android/systemui/R$id;->notification_container_parent:I

    move-object v5, p4

    invoke-virtual {p4, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->setListener(Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;)V

    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v3, p6

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object v3, p7

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$integer;->keyguard_max_notification_count:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMaxAllowedKeyguardNotifications:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxAllowedKeyguardNotifications:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMaxAllowedKeyguardNotifications:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StatusBarNotificationPresenter"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v4}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register VR mode state listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-class v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    const-class v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->createRemoteInputDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->setUpWithCallback(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;Lcom/android/systemui/statusbar/RemoteInputController$Delegate;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v3

    const-class v4, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/RemoteInputController$Callback;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$RZolY06L4AtX2ZrvmGw-j2EoYcA;

    move-object/from16 v4, p16

    invoke-direct {v3, p0, v2, v0, v4}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$RZolY06L4AtX2ZrvmGw-j2EoYcA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;)V

    move-object/from16 v2, p15

    invoke-virtual {v2, v3}, Lcom/android/systemui/InitController;->addPostInitTask(Ljava/lang/Runnable;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/CommandQueue;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/oneplus/notification/OpNotificationController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->maybeEndAmbientPulse()V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getLifetimeExtenders()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationLifetimeExtenders(Ljava/util/List;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mInterruptSuppressor:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    invoke-interface {p3, p2}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->addSuppressor(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

    invoke-virtual {p2, p0, p1, p3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;)V

    const-class p1, Lcom/android/systemui/ForegroundServiceNotificationListener;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->onUserSwitched(I)V

    return-void
.end method

.method static synthetic lambda$onExpandClicked$2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$updateNotificationViews$1(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationViews(Ljava/lang/String;)V

    return-void
.end method

.method private maybeEndAmbientPulse()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->hasPulsingNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->hasNotifications()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseOutNow()V

    :cond_0
    return-void
.end method

.method private updateNotificationOnUiModeChanged()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsForCurrentUser()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onUiModeChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateNotificationsOnDensityOrFontScaleChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsForCurrentUser()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->onDensityOrFontScaleChanged()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->areGutsExposed()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->onDensityOrFontScaleChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getMaxNotificationsWhileLocked(Z)I
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMaxAllowedKeyguardNotifications:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeMaxKeyguardNotifications(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMaxKeyguardNotifications:I

    return p1

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMaxKeyguardNotifications:I

    return p0
.end method

.method public hasActiveNotifications()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->hasActiveNotifications()Z

    move-result p0

    return p0
.end method

.method public isCollapsing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->isAnimationPending()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->isAnimationRunning()Z

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

.method public isDeviceInVrMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVrMode:Z

    return p0
.end method

.method public isPresenterFullyCollapsed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$StatusBarNotificationPresenter(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->lambda$new$0(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;)V

    return-void
.end method

.method public synthetic lambda$updateNotificationViews$1$StatusBarNotificationPresenter(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->lambda$updateNotificationViews$1(Ljava/lang/String;)V

    return-void
.end method

.method public onActivated()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v1, 0xc0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_NOTIFICATION_FALSE_TOUCH:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    sget v1, Lcom/android/systemui/R$string;->notification_tap_again:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->showTransientIndication(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    :cond_0
    return-void
.end method

.method public onActivated(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->onActivated()V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    :cond_0
    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    :cond_0
    return-void
.end method

.method public onBindRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelfChangedListener(Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$1SZvPIdbqVv78ZfFe1GTnc0G8WM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$1SZvPIdbqVv78ZfFe1GTnc0G8WM;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSecureStateProvider(Ljava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    invoke-static {}, Lcom/android/internal/widget/MessagingMessage;->dropCache()V

    invoke-static {}, Lcom/android/internal/widget/MessagingGroup;->dropCache()V

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationsOnDensityOrFontScaleChanged()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mReinflateNotificationsOnUserSwitched:Z

    :goto_0
    return-void
.end method

.method public onExpandClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToLockedShade(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSensitive()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$rp0KjJSj1GdZ6jXaKpka1OFVb7Q;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$rp0KjJSj1GdZ6jXaKpka1OFVb7Q;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNotificationRemoved(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeNotification key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " old="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StatusBarNotificationPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->hasActiveNotifications()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTracking()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpanded()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationOnUiModeChanged()V

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->lastUidChangingUiMode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDispatchUiModeChangeOnUserSwitched:Z

    :goto_0
    return-void
.end method

.method public onUpdateRowStates()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onUpdateRowStates()V

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setUser(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mReinflateNotificationsOnUserSwitched:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationsOnDensityOrFontScaleChanged()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mReinflateNotificationsOnUserSwitched:Z

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->lastUidChangingUiMode:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    if-eq v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDispatchUiModeChangeOnUserSwitched:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationOnUiModeChanged()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDispatchUiModeChangeOnUserSwitched:Z

    :cond_3
    const-string/jumbo v0, "user switched"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationViews(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotification()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLockscreenUser(I)V

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateMediaMetaData(ZZ)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    invoke-virtual {p0}, Lcom/oneplus/notification/OpNotificationController;->updateNotificationRule()V

    return-void
.end method

.method public updateMediaMetaData(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    return-void
.end method

.method public updateNotificationViews(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$Zv1tw7L-orY0AD_NGXbfZSHaht0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationPresenter$Zv1tw7L-orY0AD_NGXbfZSHaht0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->addPostCollapseAction(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateNotificationViews()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNotificationViews(Ljava/lang/String;)V

    return-void
.end method
