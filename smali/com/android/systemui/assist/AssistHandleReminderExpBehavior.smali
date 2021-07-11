.class final Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;
.super Ljava/lang/Object;
.source "AssistHandleReminderExpBehavior.java"

# interfaces
.implements Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;


# static fields
.field private static final DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

.field private static final DEFAULT_LEARNING_TIME_MS:J

.field private static final DEFAULT_SHOW_AND_GO_DELAYED_LONG_DELAY_MS:J

.field private static final DEFAULT_SHOW_AND_GO_DELAY_RESET_TIMEOUT_MS:J


# instance fields
.field private final mActivityManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

.field private final mBootCompleteCache:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/BootCompleteCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mBootCompleteListener:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

.field private final mBroadcastDispatcher:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Landroidx/slice/Clock;

.field private mConsecutiveTaskSwitches:I

.field private mContext:Landroid/content/Context;

.field private mDefaultHome:Landroid/content/ComponentName;

.field private final mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

.field private final mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAwake:Z

.field private mIsDozing:Z

.field private mIsLauncherShowing:Z

.field private mIsLearned:Z

.field private mIsNavBarHidden:Z

.field private mLastLearningTimestamp:J

.field private mLearnedHintLastShownEpochDay:J

.field private mLearningCount:I

.field private mLearningTimeElapsed:J

.field private mOnLockscreen:Z

.field private final mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private final mOverviewProxyService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mResetConsecutiveTaskSwitches:Ljava/lang/Runnable;

.field private mRunningTaskId:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mSysUiFlagContainer:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

.field private final mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private final mWakefulnessLifecycle:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_LEARNING_TIME_MS:J

    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_SHOW_AND_GO_DELAYED_LONG_DELAY_MS:J

    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_SHOW_AND_GO_DELAY_RESET_TIMEOUT_MS:J

    const-string v0, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 92
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/slice/Clock;Landroid/os/Handler;Lcom/android/systemui/assist/DeviceConfigHelper;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Clock;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/BootCompleteCache;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$1;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 111
    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$2;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 123
    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$3;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 130
    new-instance v0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleReminderExpBehavior$V4NCzVQFEFR-zsFBikU8WKQiVok;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleReminderExpBehavior$V4NCzVQFEFR-zsFBikU8WKQiVok;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    .line 132
    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 154
    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$5;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$6;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mBootCompleteListener:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

    .line 173
    new-instance v0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleReminderExpBehavior$pwcnWUhYSvHUPTaX_vnnVqcvKYA;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleReminderExpBehavior$pwcnWUhYSvHUPTaX_vnnVqcvKYA;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mResetConsecutiveTaskSwitches:Ljava/lang/Runnable;

    .line 225
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mClock:Landroidx/slice/Clock;

    .line 226
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mHandler:Landroid/os/Handler;

    .line 227
    iput-object p3, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    .line 228
    iput-object p4, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateController:Ldagger/Lazy;

    .line 229
    iput-object p5, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mActivityManagerWrapper:Ldagger/Lazy;

    .line 230
    iput-object p6, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyService:Ldagger/Lazy;

    .line 231
    iput-object p7, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mSysUiFlagContainer:Ldagger/Lazy;

    .line 232
    iput-object p8, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    .line 233
    iput-object p9, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPackageManagerWrapper:Ldagger/Lazy;

    .line 234
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

    .line 235
    sget-object p1, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object p4, p1, p3

    .line 236
    iget-object p5, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p5, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 238
    :cond_0
    iput-object p10, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mBroadcastDispatcher:Ldagger/Lazy;

    .line 239
    iput-object p11, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mBootCompleteCache:Ldagger/Lazy;

    .line 242
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleStatusBarStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleDozingChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;ILandroid/content/ComponentName;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleTaskStackTopChanged(ILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleOverviewShown()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleWakefullnessChanged(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHome:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)Landroid/content/ComponentName;
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getCurrentDefaultHome()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)Landroid/content/Context;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private callbackForCurrentState(Z)V
    .locals 1

    .line 412
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->updateLearningStatus()V

    .line 414
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLearned:Z

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForLearnedState(Z)V

    goto :goto_0

    .line 417
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForUnlearnedState()V

    :goto_0
    return-void
.end method

.method private callbackForLearnedState(Z)V
    .locals 4

    .line 422
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    if-nez v0, :cond_0

    return-void

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->shouldHideCornerHandleView()Z

    move-result v0

    .line 432
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->isFullyAwake()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowWhenTaught()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_6

    .line 436
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    .line 437
    iget-wide v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearnedHintLastShownEpochDay:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_6

    .line 438
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 440
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "reminder_exp_learned_hint_last_shown"

    .line 439
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 444
    :cond_2
    iput-wide v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearnedHintLastShownEpochDay:J

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callbackForLearnedState supportAssistantGesture :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->sIsSupportAssistantGesture:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isH2:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHydrogen()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AssistHandleReminder"

    .line 449
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->sIsSupportAssistantGesture:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHydrogen()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 454
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndGo()V

    goto :goto_2

    .line 452
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->hide()V

    goto :goto_2

    .line 434
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->hide()V

    :cond_6
    :goto_2
    return-void
.end method

.method private callbackForUnlearnedState()V
    .locals 4

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callbackForUnlearnedState supportAssistantGesture :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/util/OpUtils;->sIsSupportAssistantGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isH2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHydrogen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssistHandleReminder"

    .line 462
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->sIsSupportAssistantGesture:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHydrogen()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 478
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->shouldHideCornerHandleView()Z

    move-result v0

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callbackForUnlearnedState isFullyAwake :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->isFullyAwake()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsNavBarHidden:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isSuppressed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->isSuppressed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mOnLockscreen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsLauncherShowing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLauncherShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", shouldHideCornerHint:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->isFullyAwake()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->isSuppressed()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_2

    goto :goto_0

    .line 496
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    if-eqz v0, :cond_3

    .line 497
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndStay()V

    goto :goto_1

    .line 498
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLauncherShowing:Z

    if-eqz v0, :cond_4

    .line 499
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndGo()V

    goto :goto_1

    .line 500
    :cond_4
    iget v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 501
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    .line 502
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayedShortDelayMs()J

    move-result-wide v1

    const/4 p0, 0x0

    .line 501
    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndGoDelayed(JZ)V

    goto :goto_1

    .line 504
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    .line 505
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayedLongDelayMs()J

    move-result-wide v2

    .line 504
    invoke-interface {v0, v2, v3, v1}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndGoDelayed(JZ)V

    goto :goto_1

    .line 495
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->hide()V

    :goto_1
    return-void

    .line 471
    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->hide()V

    return-void
.end method

.method private getCurrentDefaultHome()Landroid/content/ComponentName;
    .locals 5

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPackageManagerWrapper:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/system/PackageManagerWrapper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/high16 p0, -0x80000000

    .line 331
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v1

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 332
    iget v4, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v4, p0, :cond_2

    .line 333
    iget-object p0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 334
    iget p0, v3, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_1

    :cond_2
    if-ne v4, p0, :cond_1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private getLearningCount()I
    .locals 2

    .line 556
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    const-string v0, "assist_handles_learn_count"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/assist/DeviceConfigHelper;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getLearningTimeMs()J
    .locals 3

    .line 550
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    sget-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_LEARNING_TIME_MS:J

    const-string v2, "assist_handles_learn_time_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShowAndGoDelayResetTimeoutMs()J
    .locals 3

    .line 574
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    sget-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_SHOW_AND_GO_DELAY_RESET_TIMEOUT_MS:J

    const-string v2, "assist_handles_show_and_go_delay_reset_timeout_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShowAndGoDelayedLongDelayMs()J
    .locals 3

    .line 568
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    sget-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_SHOW_AND_GO_DELAYED_LONG_DELAY_MS:J

    const-string v2, "assist_handles_show_and_go_delayed_long_delay_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShowAndGoDelayedShortDelayMs()J
    .locals 3

    .line 562
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    const-string v0, "assist_handles_show_and_go_delayed_short_delay_ms"

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShowWhenTaught()Z
    .locals 2

    .line 598
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    const-string v0, "assist_handles_show_when_taught"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/assist/DeviceConfigHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getSuppressOnApps()Z
    .locals 2

    .line 592
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    const-string v0, "assist_handles_suppress_on_apps"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/assist/DeviceConfigHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getSuppressOnLauncher()Z
    .locals 2

    .line 586
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    const-string v0, "assist_handles_suppress_on_launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/assist/DeviceConfigHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getSuppressOnLockscreen()Z
    .locals 2

    .line 580
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    const-string v0, "assist_handles_suppress_on_lockscreen"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/assist/DeviceConfigHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private handleDozingChanged(Z)V
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    .line 359
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsDozing:Z

    const/4 p1, 0x0

    .line 360
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method private handleOverviewShown()V
    .locals 1

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    const/4 v0, 0x0

    .line 403
    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method private handleStatusBarStateChanged(I)V
    .locals 1

    .line 343
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->onLockscreen(I)Z

    move-result p1

    .line 344
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    .line 349
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    xor-int/lit8 p1, p1, 0x1

    .line 350
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method private handleSystemUiStateChanged(I)V
    .locals 2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 392
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    if-ne v1, p1, :cond_1

    return-void

    .line 396
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    .line 397
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    .line 398
    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method private handleTaskStackTopChanged(ILandroid/content/ComponentName;)V
    .locals 1

    .line 374
    iget v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mRunningTaskId:I

    if-eq v0, p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    iput p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mRunningTaskId:I

    .line 379
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHome:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLauncherShowing:Z

    if-eqz p1, :cond_1

    .line 381
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    goto :goto_0

    .line 383
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->rescheduleConsecutiveTaskSwitchesReset()V

    .line 384
    iget p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    :goto_0
    const/4 p1, 0x0

    .line 386
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private handleWakefullnessChanged(Z)V
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsAwake:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    .line 369
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsAwake:Z

    const/4 p1, 0x0

    .line 370
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method private isFullyAwake()Z
    .locals 1

    .line 546
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsAwake:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsDozing:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSuppressed()Z
    .locals 1

    .line 510
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    if-eqz v0, :cond_0

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnLockscreen()Z

    move-result p0

    return p0

    .line 512
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLauncherShowing:Z

    if-eqz v0, :cond_1

    .line 513
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnLauncher()Z

    move-result p0

    return p0

    .line 515
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnApps()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$V4NCzVQFEFR-zsFBikU8WKQiVok(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleSystemUiStateChanged(I)V

    return-void
.end method

.method public static synthetic lambda$pwcnWUhYSvHUPTaX_vnnVqcvKYA(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    return-void
.end method

.method private synthetic lambda$updateLearningStatus$0()V
    .locals 3

    .line 531
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    .line 532
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    const-string p0, "reminder_exp_learning_time_elapsed"

    .line 531
    invoke-static {v0, p0, v1, v2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method private onLockscreen(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private rescheduleConsecutiveTaskSwitchesReset()V
    .locals 4

    .line 541
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mResetConsecutiveTaskSwitches:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mResetConsecutiveTaskSwitches:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayResetTimeoutMs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetConsecutiveTaskSwitches()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mResetConsecutiveTaskSwitches:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 537
    iput v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    return-void
.end method

.method private shouldHideCornerHandleView()Z
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_0

    .line 664
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 666
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNavigationBarHiddenMode()I

    move-result p0

    if-eq p0, v0, :cond_2

    sget-boolean p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private updateLearningStatus()V
    .locals 6

    .line 520
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mClock:Landroidx/slice/Clock;

    invoke-interface {v0}, Landroidx/slice/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 525
    iget-wide v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    iget-wide v4, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLastLearningTimestamp:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    .line 526
    iput-wide v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLastLearningTimestamp:J

    .line 528
    iget v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningCount:I

    .line 529
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getLearningCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-wide v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getLearningTimeMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLearned:Z

    .line 531
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/assist/-$$Lambda$AssistHandleReminderExpBehavior$b5N62AJXKgTBT_CGtHJhp-XuFas;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleReminderExpBehavior$b5N62AJXKgTBT_CGtHJhp-XuFas;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Current AssistHandleReminderExpBehavior State:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mOnLockscreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mIsDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mIsAwake="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsAwake:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mRunningTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mDefaultHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHome:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mIsNavBarHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mIsLauncherShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLauncherShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mConsecutiveTaskSwitches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mIsLearned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLearned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mLastLearningTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLastLearningTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mLearningTimeElapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mLearningCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mLearnedHintLastShownEpochDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearnedHintLastShownEpochDay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mAssistHandleCallbacks present: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   Phenotype Flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "assist_handles_learn_time_ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getLearningTimeMs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_learn_count"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getLearningCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_show_and_go_delayed_short_delay_ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayedShortDelayMs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_show_and_go_delayed_long_delay_ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayedLongDelayMs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_show_and_go_delay_reset_timeout_ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayResetTimeoutMs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_suppress_on_lockscreen"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnLockscreen()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_suppress_on_launcher"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnLauncher()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_suppress_on_apps"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnApps()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "assist_handles_show_when_taught"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowWhenTaught()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 655
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$updateLearningStatus$0$AssistHandleReminderExpBehavior()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->lambda$updateLearningStatus$0()V

    return-void
.end method

.method public onAssistHandlesRequested()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->isFullyAwake()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    if-nez v0, :cond_0

    .line 317
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndGo()V

    :cond_0
    return-void
.end method

.method public onAssistantGesturePerformed()V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningCount:I

    int-to-long v1, v1

    const-string p0, "reminder_exp_learning_event_count"

    .line 307
    invoke-static {v0, p0, v1, v2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public onModeActivated(Landroid/content/Context;Lcom/android/systemui/assist/AssistHandleCallbacks;)V
    .locals 4

    .line 248
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    .line 249
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    const/4 p2, 0x0

    .line 250
    iput p2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    .line 251
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mBootCompleteCache:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BootCompleteCache;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mBootCompleteListener:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/BootCompleteCache;->addListener(Lcom/android/systemui/BootCompleteCache$BootCompleteListener;)Z

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getCurrentDefaultHome()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHome:Landroid/content/ComponentName;

    .line 253
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mBroadcastDispatcher:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->onLockscreen(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    .line 256
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsDozing:Z

    .line 257
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mActivityManagerWrapper:Ldagger/Lazy;

    .line 259
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    .line 260
    :cond_0
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :goto_0
    iput v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mRunningTaskId:I

    .line 261
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mActivityManagerWrapper:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyService:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mSysUiFlagContainer:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/model/SysUiState;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsAwake:Z

    .line 266
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reminder_exp_learning_time_elapsed"

    const-wide/16 v2, 0x0

    .line 268
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reminder_exp_learning_event_count"

    .line 270
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningCount:I

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "reminder_exp_learned_hint_last_shown"

    .line 272
    invoke-static {p1, v0, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearnedHintLastShownEpochDay:J

    .line 274
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mClock:Landroidx/slice/Clock;

    invoke-interface {p1}, Landroidx/slice/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLastLearningTimestamp:J

    .line 277
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->updateSupportAssistantGestureState(Landroid/content/Context;)V

    .line 280
    invoke-direct {p0, p2}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method public onModeDeactivated()V
    .locals 6

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    .line 286
    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mBroadcastDispatcher:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mBootCompleteCache:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/BootCompleteCache;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mBootCompleteListener:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/BootCompleteCache;->removeListener(Lcom/android/systemui/BootCompleteCache$BootCompleteListener;)V

    .line 289
    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reminder_exp_learning_time_elapsed"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 290
    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v5, "reminder_exp_learning_event_count"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reminder_exp_learned_hint_last_shown"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 292
    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mActivityManagerWrapper:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyService:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mSysUiFlagContainer:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/model/SysUiState;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/model/SysUiState;->removeCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method
