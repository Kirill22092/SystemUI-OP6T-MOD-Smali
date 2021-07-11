.class public final Lcom/android/systemui/assist/AssistHandleBehaviorController;
.super Ljava/lang/Object;
.source "AssistHandleBehaviorController.java"

# interfaces
.implements Lcom/android/systemui/assist/AssistHandleCallbacks;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;
    }
.end annotation


# static fields
.field private static final DEFAULT_BEHAVIOR:Lcom/android/systemui/assist/AssistHandleBehavior;

.field private static final DEFAULT_SHOW_AND_GO_DURATION_MS:J


# instance fields
.field private final mA11yManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssistHandleViewController:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mBehaviorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

.field private final mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlesLastHiddenAt:J

.field private mHandlesShowing:Z

.field private final mHideHandles:Ljava/lang/Runnable;

.field private mInGesturalMode:Z

.field private final mShowAndGo:Ljava/lang/Runnable;

.field private mShowAndGoEndsAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->DEFAULT_SHOW_AND_GO_DURATION_MS:J

    .line 71
    sget-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->REMINDER_EXP:Lcom/android/systemui/assist/AssistHandleBehavior;

    sput-object v0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->DEFAULT_BEHAVIOR:Lcom/android/systemui/assist/AssistHandleBehavior;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Landroid/os/Handler;Ljavax/inject/Provider;Lcom/android/systemui/assist/DeviceConfigHelper;Ljava/util/Map;Lcom/android/systemui/statusbar/phone/NavigationModeController;Ldagger/Lazy;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/AssistUtils;",
            "Landroid/os/Handler;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleViewController;",
            ">;",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            "Ldagger/Lazy<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$XubZVLOT9vWCBnL-QqZRgbOELVA;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$XubZVLOT9vWCBnL-QqZRgbOELVA;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHideHandles:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$oeveMWAQo5jd5bG1H5Ci7Dy4X74;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$oeveMWAQo5jd5bG1H5Ci7Dy4X74;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGo:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    .line 90
    sget-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->OFF:Lcom/android/systemui/assist/AssistHandleBehavior;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    .line 104
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 106
    iput-object p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    .line 107
    iput-object p4, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mAssistHandleViewController:Ljavax/inject/Provider;

    .line 108
    iput-object p5, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    .line 109
    iput-object p6, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    .line 110
    iput-object p8, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mA11yManager:Ldagger/Lazy;

    .line 112
    new-instance p1, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$UX7PPcltnlTgxyL7MxmLbVmQRcI;

    invoke-direct {p1, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$UX7PPcltnlTgxyL7MxmLbVmQRcI;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    .line 113
    invoke-virtual {p7, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    .line 112
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getBehaviorMode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->setBehavior(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    iget-object p2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    .line 117
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/systemui/assist/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;

    invoke-direct {p3, p2}, Lcom/android/systemui/assist/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;-><init>(Landroid/os/Handler;)V

    new-instance p2, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$q1QjkwrdHAyLNN1tG8mZqypuW-0;

    invoke-direct {p2, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$q1QjkwrdHAyLNN1tG8mZqypuW-0;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    .line 116
    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/assist/DeviceConfigHelper;->addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string p1, "AssistHandleBehavior"

    .line 126
    invoke-virtual {p9, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method private clearPendingCommands()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHideHandles:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    .line 290
    iput-wide v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGoEndsAt:J

    return-void
.end method

.method private getBehaviorMode()Ljava/lang/String;
    .locals 2

    .line 234
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    sget-object v0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->DEFAULT_BEHAVIOR:Lcom/android/systemui/assist/AssistHandleBehavior;

    .line 236
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "assist_handles_behavior_mode"

    .line 234
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/assist/DeviceConfigHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getShowAndGoDuration()J
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    sget-wide v1, Lcom/android/systemui/assist/AssistHandleBehaviorController;->DEFAULT_SHOW_AND_GO_DURATION_MS:J

    const-string v3, "assist_handles_show_and_go_duration_ms"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mA11yManager:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    long-to-int v0, v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private getShownFrequencyThreshold()J
    .locals 3

    .line 220
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    const-string v0, "assist_handles_shown_frequency_threshold_ms"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private handleNavigationModeChange(I)V
    .locals 1

    .line 273
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    .line 274
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 278
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    if-eqz p1, :cond_1

    .line 280
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onModeActivated(Landroid/content/Context;Lcom/android/systemui/assist/AssistHandleCallbacks;)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    invoke-interface {p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onModeDeactivated()V

    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->hide()V

    :goto_0
    return-void
.end method

.method private handlesUnblocked(Z)Z
    .locals 6

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->isUserSetupComplete()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 212
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesLastHiddenAt:J

    sub-long/2addr v2, v4

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getShownFrequencyThreshold()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v0

    .line 214
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 215
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method private hideHandles()V
    .locals 3

    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesLastHiddenAt:J

    .line 263
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mAssistHandleViewController:Ljavax/inject/Provider;

    .line 264
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistHandleViewController;

    if-nez p0, :cond_1

    const-string p0, "AssistHandleBehavior"

    const-string v0, "Couldn\'t show handles, AssistHandleViewController unavailable"

    .line 266
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistHandleViewController;->setAssistHintVisible(Z)V

    :goto_0
    return-void
.end method

.method private isUserSetupComplete()Z
    .locals 2

    .line 294
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mContext:Landroid/content/Context;

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    .line 294
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static synthetic lambda$UX7PPcltnlTgxyL7MxmLbVmQRcI(Lcom/android/systemui/assist/AssistHandleBehaviorController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->handleNavigationModeChange(I)V

    return-void
.end method

.method public static synthetic lambda$XubZVLOT9vWCBnL-QqZRgbOELVA(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->hideHandles()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 119
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "assist_handles_behavior_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->setBehavior(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$oeveMWAQo5jd5bG1H5Ci7Dy4X74(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->showAndGoInternal()V

    return-void
.end method

.method private synthetic lambda$showAndStay$1()V
    .locals 1

    const/4 v0, 0x1

    .line 160
    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->maybeShowHandles(Z)V

    return-void
.end method

.method private maybeShowHandles(Z)V
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->handlesUnblocked(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    .line 246
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mAssistHandleViewController:Ljavax/inject/Provider;

    .line 247
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistHandleViewController;

    if-nez p0, :cond_1

    const-string p0, "AssistHandleBehavior"

    const-string p1, "Couldn\'t show handles, AssistHandleViewController unavailable"

    .line 249
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistHandleViewController;->setAssistHintVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setBehavior(Ljava/lang/String;)V
    .locals 1

    .line 201
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/assist/AssistHandleBehavior;->valueOf(Ljava/lang/String;)Lcom/android/systemui/assist/AssistHandleBehavior;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->setBehavior(Lcom/android/systemui/assist/AssistHandleBehavior;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid behavior: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AssistHandleBehavior"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showAndGoInternal()V
    .locals 4

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->maybeShowHandles(Z)V

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getShowAndGoDuration()J

    move-result-wide v0

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGoEndsAt:J

    .line 145
    iget-object v2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHideHandles:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public areHandlesShowing()Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "Current AssistHandleBehaviorController State:"

    .line 305
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   mHandlesShowing="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   mHandlesLastHiddenAt="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesLastHiddenAt:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   mInGesturalMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "   Phenotype Flags:"

    .line 311
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      assist_handles_show_and_go_duration_ms(a11y modded)="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getShowAndGoDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      assist_handles_shown_frequency_threshold_ms="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getShownFrequencyThreshold()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 316
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      assist_handles_behavior_mode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getBehaviorMode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   mCurrentBehavior="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    const-string p1, "   "

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getShowAndGoRemainingTimeMs()J
    .locals 4

    .line 164
    iget-wide v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGoEndsAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public hide()V
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->clearPendingCommands()V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHideHandles:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$new$0$AssistHandleBehaviorController(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public synthetic lambda$showAndStay$1$AssistHandleBehaviorController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->lambda$showAndStay$1()V

    return-void
.end method

.method onAssistHandlesRequested()V
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onAssistHandlesRequested()V

    :cond_0
    return-void
.end method

.method onAssistantGesturePerformed()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onAssistantGesturePerformed()V

    return-void
.end method

.method setBehavior(Lcom/android/systemui/assist/AssistHandleBehavior;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    if-ne v0, p1, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported behavior requested: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AssistHandleBehavior"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 191
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    invoke-interface {v0}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onModeDeactivated()V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onModeActivated(Landroid/content/Context;Lcom/android/systemui/assist/AssistHandleCallbacks;)V

    .line 196
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    return-void
.end method

.method setInGesturalModeForTest(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 300
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    return-void
.end method

.method public showAndGo()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->clearPendingCommands()V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGo:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showAndGoDelayed(JZ)V
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->clearPendingCommands()V

    if-eqz p3, :cond_0

    .line 152
    iget-object p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHideHandles:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGo:Ljava/lang/Runnable;

    invoke-virtual {p3, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showAndStay()V
    .locals 2

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->clearPendingCommands()V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$jLNVwoO6t8_VWqmD__-vvvJFYqA;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$jLNVwoO6t8_VWqmD__-vvvJFYqA;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
