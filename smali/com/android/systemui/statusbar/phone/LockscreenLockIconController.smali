.class public Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;
.super Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;
.source "LockscreenLockIconController.java"


# instance fields
.field private final mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private final mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mBlockUpdates:Z

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

.field private final mDockManager:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mKeyguardJustShown:Z

.field private final mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private mKeyguardShowing:Z

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private final mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field private mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mResources:Landroid/content/res/Resources;

.field private final mSBStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mScreenOn:Z

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mSimLocked:Z

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTransientBiometricsError:Z

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWakeAndUnlockRunning:Z

.field private final mWakeUpListener:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;-><init>()V

    new-instance p14, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;

    invoke-direct {p14, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object p14, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance p14, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;

    invoke-direct {p14, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object p14, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mSBStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    new-instance p14, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;

    invoke-direct {p14, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object p14, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    new-instance p14, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;

    invoke-direct {p14, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object p14, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeUpListener:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;

    new-instance p14, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;

    invoke-direct {p14, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object p14, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance p14, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$YwLkB4yDF5Gwcj5NX5hNSw8eA7E;

    invoke-direct {p14, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$YwLkB4yDF5Gwcj5NX5hNSw8eA7E;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object p14, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    new-instance p14, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;

    invoke-direct {p14, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object p14, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    new-instance p14, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$7;

    invoke-direct {p14, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$7;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object p14, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    if-nez p11, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p11}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDockManager:Ljava/util/Optional;

    iput-object p12, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p13, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mResources:Landroid/content/res/Resources;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setLockIconController(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mSBStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDockManager:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mSimLocked:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/dock/DockManager$DockEventListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setDozing(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setPulsing(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setStatusBarState(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->updateIconVisibility()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBlockUpdates:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBlockUpdates:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardJustShown:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->getState()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeUpListener:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method private canBlockUpdates()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardShowing:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

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

.method private getState()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mSimLocked:Z

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mTransientBiometricsError:Z

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isPulsing()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private handleClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isCameraErrorState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "LockIcon"

    const-string v0, "enter bouncer when camera error"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->showBouncer(Z)V

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLock(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZ)V

    return-void
.end method

.method private handleLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v0, 0xbf

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    sget-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_LOCK_TAP:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->keyguard_indication_trust_disabled:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onLockIconPressed()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$LslFmHw3JlLgJluLcqL2mxJusEk(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->handleLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$w6uFCwNQV4Mtc7oy2-mEXXG52_I(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->handleClick(Landroid/view/View;)V

    return-void
.end method

.method private setDozing(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method private setPulsing(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method private setStatusBarState(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->updateIconVisibility()Z

    return-void
.end method

.method private update()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update(Z)V

    return-void
.end method

.method private update(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->opUpdate(Z)V

    return-void
.end method

.method private updateClickability()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->opUpdateClickability()V

    return-void
.end method

.method private updateIconVisibility()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->initOpLockscreenLockIconController()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$w6uFCwNQV4Mtc7oy2-mEXXG52_I;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$w6uFCwNQV4Mtc7oy2-mEXXG52_I;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$LslFmHw3JlLgJluLcqL2mxJusEk;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$LslFmHw3JlLgJluLcqL2mxJusEk;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-interface {p1, v0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setStatusBarState(I)V

    return-void
.end method

.method public onBiometricAuthModeChanged(ZZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeAndUnlockRunning:Z

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->canBlockUpdates()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBlockUpdates:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method public onBouncerPreHideAnimation()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method public onScrimVisibilityChanged(Ljava/lang/Integer;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeAndUnlockRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeAndUnlockRunning:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    :cond_0
    return-void
.end method

.method public onShowingLaunchAffordanceChanged(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method public opUpdate(Z)V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mTrustDrawable:Lcom/oneplus/phone/OpTrustDrawable;

    invoke-virtual {v3}, Lcom/oneplus/phone/OpTrustDrawable;->start()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mTrustDrawable:Lcom/oneplus/phone/OpTrustDrawable;

    invoke-virtual {v3}, Lcom/oneplus/phone/OpTrustDrawable;->stop()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->opGetState()I

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    goto :goto_2

    :cond_2
    move v11, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v11, v1

    :goto_3
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v12, "LockIcon"

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "opUpdate, visible:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", state:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mLastState:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastState:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mDeviceInteractive:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mDeviceInteractive:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mLastDeviceInteractive:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mLastDeviceInteractive:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mScreenOn:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mScreenOn:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mLastScreenOn:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastScreenOn:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", force:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", anyFingerprintIcon:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", useAdditionalPadding:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", trustHidden:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", stack:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastState:I

    if-ne v3, v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mDeviceInteractive:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mLastDeviceInteractive:Z

    if-ne v0, v4, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mScreenOn:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastScreenOn:Z

    if-ne v0, v4, :cond_5

    if-eqz p1, :cond_16

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mPaddingRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v5, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastState:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mLastDeviceInteractive:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mDeviceInteractive:Z

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastScreenOn:Z

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mScreenOn:Z

    move-object v4, p0

    move v6, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->opGetAnimationResForTransition(IIZZZZ)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    sget v4, Lcom/android/systemui/R$drawable;->op_lockscreen_fingerprint_draw_off_animation:I

    if-ne p1, v4, :cond_7

    move v4, v1

    :goto_5
    move v11, v4

    goto :goto_6

    :cond_7
    sget v4, Lcom/android/systemui/R$drawable;->op_trusted_state_to_error_animation:I

    if-ne p1, v4, :cond_8

    move v4, v1

    move v11, v2

    goto :goto_6

    :cond_8
    sget v4, Lcom/android/systemui/R$drawable;->op_error_to_trustedstate_animation:I

    if-ne p1, v4, :cond_9

    move v4, v2

    goto :goto_5

    :cond_9
    move v4, v11

    :goto_6
    if-eqz v0, :cond_a

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_7

    :cond_a
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mScreenOn:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mDeviceInteractive:Z

    invoke-virtual {p0, v3, p1, v5}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->opGetIconForState(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_7
    instance-of v5, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    const/4 v6, 0x0

    if-eqz v5, :cond_b

    move-object v5, p1

    check-cast v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_8

    :cond_b
    move-object v5, v6

    :goto_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/assist/ui/DisplayUtils;->getWidth(Landroid/content/Context;)I

    move-result v7

    const/16 v8, 0x438

    if-le v7, v8, :cond_c

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/android/systemui/R$dimen;->keyguard_affordance_icon_width:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7, v8}, Lcom/oneplus/util/OpUtils;->convertPxByResolutionProportion(FI)I

    move-result v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/systemui/R$dimen;->keyguard_affordance_icon_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v9, v8}, Lcom/oneplus/util/OpUtils;->convertPxByResolutionProportion(FI)I

    move-result v8

    goto :goto_9

    :cond_c
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$dimen;->keyguard_affordance_icon_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/systemui/R$dimen;->keyguard_affordance_icon_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :goto_9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    if-ne v9, v7, :cond_d

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    if-eq v9, v8, :cond_e

    :cond_d
    new-instance v9, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$IntrinsicSizeDrawable;

    invoke-direct {v9, p1, v8, v7}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$IntrinsicSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object p1, v9

    :cond_e
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz v11, :cond_f

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/systemui/R$dimen;->fingerprint_icon_additional_padding:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_a

    :cond_f
    move v8, v2

    :goto_a
    invoke-virtual {v7, v2, v2, v2, v8}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v7, p1, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->getState()I

    move-result p1

    const/4 v7, 0x2

    if-ne p1, v7, :cond_10

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/systemui/R$string;->accessibility_scanning_face:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_10
    if-eqz v5, :cond_11

    if-eqz v0, :cond_11

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_11
    iget p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastState:I

    const/16 v0, 0xb

    if-eq p1, v0, :cond_12

    if-ne v3, v0, :cond_12

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_12
    iget p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastState:I

    const/16 v5, 0xd

    if-eq p1, v5, :cond_13

    if-ne v3, v5, :cond_13

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$drawable;->op_facelock_lock_ripple_drawable:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_13
    if-eq v3, v0, :cond_14

    const/16 p1, 0xc

    if-eq v3, p1, :cond_14

    if-eq v3, v5, :cond_14

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mTrustDrawable:Lcom/oneplus/phone/OpTrustDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    :goto_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->opUpdateIconAnimation(Landroid/view/View;I)V

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_15

    iget p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastState:I

    if-eq p1, v3, :cond_15

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iput v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastState:I

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mDeviceInteractive:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mLastDeviceInteractive:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mScreenOn:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastScreenOn:Z

    move v11, v4

    :cond_16
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result p1

    if-eqz p1, :cond_17

    if-nez v11, :cond_17

    goto :goto_c

    :cond_17
    move v1, v2

    :goto_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mTrustDrawable:Lcom/oneplus/phone/OpTrustDrawable;

    invoke-virtual {p1, v1}, Lcom/oneplus/phone/OpTrustDrawable;->setTrustManaged(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->updateClickability()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateDarkTint()V

    return-void
.end method

.method public setBouncerShowingScrimmed(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    :cond_0
    return-void
.end method

.method public setTransientBiometricsError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mTransientBiometricsError:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method
