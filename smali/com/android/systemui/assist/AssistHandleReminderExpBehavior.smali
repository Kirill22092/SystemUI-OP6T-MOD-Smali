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
.field private final mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

.field private mBackFromLockScreen:Z

.field private mConsecutiveTaskSwitches:I

.field private mContext:Landroid/content/Context;

.field private mDefaultHome:Landroid/content/ComponentName;

.field private final mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

.field private final mHandler:Landroid/os/Handler;

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

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

.field private final mResetConsecutiveTaskSwitches:Ljava/lang/Runnable;

.field private mRunningTaskId:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_LEARNING_TIME_MS:J

    .line 63
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_SHOW_AND_GO_DELAYED_LONG_DELAY_MS:J

    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_SHOW_AND_GO_DELAY_RESET_TIMEOUT_MS:J

    const-string v0, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 72
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/android/systemui/assist/PhenotypeHelper;)V
    .locals 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$1;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 92
    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$2;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 104
    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$3;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 116
    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleReminderExpBehavior$pwcnWUhYSvHUPTaX_vnnVqcvKYA;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleReminderExpBehavior$pwcnWUhYSvHUPTaX_vnnVqcvKYA;-><init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mResetConsecutiveTaskSwitches:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mBackFromLockScreen:Z

    .line 156
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mHandler:Landroid/os/Handler;

    .line 157
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    .line 158
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 159
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 160
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 161
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

    .line 162
    sget-object p1, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 163
    iget-object v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleStatusBarStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleDozingChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;ILandroid/content/ComponentName;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleTaskStackTopChanged(ILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleOverviewShown()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->handleSystemUiStateChanged(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHome:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$600()Landroid/content/ComponentName;
    .locals 1

    .line 54
    invoke-static {}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getCurrentDefaultHome()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private callbackForCurrentState(Z)V
    .locals 1

    .line 303
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->updateLearningStatus()V

    .line 305
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLearned:Z

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForLearnedState(Z)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForUnlearnedState()V

    :goto_0
    return-void
.end method

.method private callbackForLearnedState(Z)V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsDozing:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowWhenTaught()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    .line 320
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    .line 321
    iget-wide v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearnedHintLastShownEpochDay:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_4

    .line 322
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "reminder_exp_learned_hint_last_shown"

    .line 323
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 328
    :cond_2
    iput-wide v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearnedHintLastShownEpochDay:J

    .line 329
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndGo()V

    goto :goto_1

    .line 318
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->hide()V

    :cond_4
    :goto_1
    return-void
.end method

.method private callbackForUnlearnedState()V
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    if-nez v0, :cond_0

    return-void

    .line 339
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsDozing:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->isSuppressed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 345
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLauncherShowing:Z

    if-eqz v0, :cond_4

    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mBackFromLockScreen:Z

    if-nez v0, :cond_3

    .line 351
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->hide()V

    goto :goto_1

    .line 353
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndGo()V

    goto :goto_1

    .line 356
    :cond_4
    iget v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 357
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayedShortDelayMs()J

    move-result-wide v1

    const/4 p0, 0x0

    .line 357
    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndGoDelayed(JZ)V

    goto :goto_1

    .line 360
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayedLongDelayMs()J

    move-result-wide v2

    .line 360
    invoke-interface {v0, v2, v3, v1}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndGoDelayed(JZ)V

    goto :goto_1

    .line 340
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->hide()V

    :goto_1
    return-void
.end method

.method private static getCurrentDefaultHome()Landroid/content/ComponentName;
    .locals 6

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/high16 v1, -0x80000000

    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    move-object v1, v2

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 234
    iget v5, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v5, v3, :cond_2

    .line 235
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 236
    iget v3, v4, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_1

    :cond_2
    if-ne v5, v3, :cond_1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private getLearningCount()I
    .locals 2

    .line 413
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    const-string v0, "assist_handles_learn_count"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getLearningTimeMs()J
    .locals 3

    .line 407
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    sget-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_LEARNING_TIME_MS:J

    const-string v2, "assist_handles_learn_time_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShowAndGoDelayResetTimeoutMs()J
    .locals 3

    .line 431
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    sget-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_SHOW_AND_GO_DELAY_RESET_TIMEOUT_MS:J

    const-string v2, "assist_handles_show_and_go_delay_reset_timeout_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShowAndGoDelayedLongDelayMs()J
    .locals 3

    .line 425
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    sget-wide v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->DEFAULT_SHOW_AND_GO_DELAYED_LONG_DELAY_MS:J

    const-string v2, "assist_handles_show_and_go_delayed_long_delay_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShowAndGoDelayedShortDelayMs()J
    .locals 3

    .line 419
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    const-string v0, "assist_handles_show_and_go_delayed_short_delay_ms"

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/assist/PhenotypeHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShowWhenTaught()Z
    .locals 2

    .line 455
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    const-string v0, "assist_handles_show_when_taught"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getSuppressOnApps()Z
    .locals 2

    .line 449
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    const-string v0, "assist_handles_suppress_on_apps"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getSuppressOnLauncher()Z
    .locals 2

    .line 443
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    const-string v0, "assist_handles_suppress_on_launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getSuppressOnLockscreen()Z
    .locals 2

    .line 437
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    const-string v0, "assist_handles_suppress_on_lockscreen"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private handleDozingChanged(Z)V
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    .line 261
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsDozing:Z

    const/4 p1, 0x0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method private handleOverviewShown()V
    .locals 1

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    const/4 v0, 0x0

    .line 294
    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method private handleStatusBarStateChanged(I)V
    .locals 1

    .line 245
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->onLockscreen(I)Z

    move-result p1

    .line 246
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    .line 251
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    xor-int/lit8 p1, p1, 0x1

    .line 252
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method private handleSystemUiStateChanged(I)V
    .locals 1

    .line 282
    invoke-static {p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->isNavBarHidden(I)Z

    move-result p1

    .line 283
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    .line 288
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsNavBarHidden:Z

    const/4 p1, 0x0

    .line 289
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method private handleTaskStackTopChanged(ILandroid/content/ComponentName;)V
    .locals 1

    .line 266
    iget v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mRunningTaskId:I

    if-eq v0, p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 270
    :cond_0
    iput p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mRunningTaskId:I

    .line 271
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHome:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLauncherShowing:Z

    .line 272
    iget-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLauncherShowing:Z

    if-eqz p1, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

    goto :goto_0

    .line 275
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->rescheduleConsecutiveTaskSwitchesReset()V

    .line 276
    iget p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    :goto_0
    const/4 p1, 0x0

    .line 278
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static isNavBarHidden(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSuppressed()Z
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mBackFromLockScreen:Z

    .line 370
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnLockscreen()Z

    move-result p0

    return p0

    .line 371
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsLauncherShowing:Z

    if-eqz v0, :cond_1

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnLauncher()Z

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x0

    .line 375
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mBackFromLockScreen:Z

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnApps()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$pwcnWUhYSvHUPTaX_vnnVqcvKYA(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->resetConsecutiveTaskSwitches()V

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

    .line 402
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mResetConsecutiveTaskSwitches:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mResetConsecutiveTaskSwitches:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayResetTimeoutMs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetConsecutiveTaskSwitches()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mResetConsecutiveTaskSwitches:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 398
    iput v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    return-void
.end method

.method private updateLearningStatus()V
    .locals 6

    .line 382
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 387
    iget-wide v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    iget-wide v4, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLastLearningTimestamp:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    .line 388
    iput-wide v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLastLearningTimestamp:J

    .line 389
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    .line 390
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    const-string v3, "reminder_exp_learning_time_elapsed"

    .line 389
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 392
    iget v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningCount:I

    .line 393
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

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Current AssistHandleReminderExpBehavior State:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
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

    .line 464
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

    .line 465
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

    .line 466
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

    .line 467
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

    .line 468
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

    .line 469
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

    .line 470
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

    .line 471
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

    .line 472
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

    .line 473
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

    .line 474
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

    .line 475
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

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   Phenotype Flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "assist_handles_learn_time_ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getLearningTimeMs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_learn_count"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getLearningCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_show_and_go_delayed_short_delay_ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayedShortDelayMs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_show_and_go_delayed_long_delay_ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayedLongDelayMs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_show_and_go_delay_reset_timeout_ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowAndGoDelayResetTimeoutMs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_suppress_on_lockscreen"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnLockscreen()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_suppress_on_launcher"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnLauncher()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "assist_handles_suppress_on_apps"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getSuppressOnApps()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "assist_handles_show_when_taught"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getShowWhenTaught()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 511
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onAssistantGesturePerformed()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningCount:I

    int-to-long v1, v1

    const-string p0, "reminder_exp_learning_event_count"

    .line 214
    invoke-static {v0, p0, v1, v2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public onModeActivated(Landroid/content/Context;Lcom/android/systemui/assist/AssistHandleCallbacks;)V
    .locals 5

    .line 169
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    const/4 p2, 0x0

    .line 171
    iput p2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mConsecutiveTaskSwitches:I

    .line 172
    invoke-static {}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->getCurrentDefaultHome()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHome:Landroid/content/ComponentName;

    .line 173
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->onLockscreen(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOnLockscreen:Z

    .line 175
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mIsDozing:Z

    .line 176
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    .line 178
    :cond_0
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :goto_0
    iput v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mRunningTaskId:I

    .line 179
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "reminder_exp_learning_time_elapsed"

    .line 182
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningTimeElapsed:J

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "reminder_exp_learning_event_count"

    .line 184
    invoke-static {v0, v3, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearningCount:I

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "reminder_exp_learned_hint_last_shown"

    .line 186
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLearnedHintLastShownEpochDay:J

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mLastLearningTimestamp:J

    .line 190
    invoke-direct {p0, p2}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->callbackForCurrentState(Z)V

    return-void
.end method

.method public onModeDeactivated()V
    .locals 6

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    .line 196
    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, "reminder_exp_learning_time_elapsed"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 199
    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const-string v5, "reminder_exp_learning_event_count"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "reminder_exp_learned_hint_last_shown"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 201
    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mContext:Landroid/content/Context;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method
