.class public final Lcom/android/systemui/assist/PhoneStateMonitor;
.super Ljava/lang/Object;
.source "PhoneStateMonitor.java"


# static fields
.field private static final DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultHome:Landroid/content/ComponentName;

.field private mLauncherShowing:Z

.field private final mStatusBarOptionalLazy:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 64
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/assist/PhoneStateMonitor;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/Optional;Lcom/android/systemui/BootCompleteCache;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;",
            "Lcom/android/systemui/BootCompleteCache;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mContext:Landroid/content/Context;

    .line 82
    iput-object p3, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mStatusBarOptionalLazy:Ljava/util/Optional;

    .line 83
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p1, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 85
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    .line 86
    invoke-static {}, Lcom/android/systemui/assist/PhoneStateMonitor;->getCurrentDefaultHome()Landroid/content/ComponentName;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mDefaultHome:Landroid/content/ComponentName;

    .line 87
    new-instance p3, Lcom/android/systemui/assist/-$$Lambda$PhoneStateMonitor$kU1yau2iyc4oGSlu9ejSJU0AW3w;

    invoke-direct {p3, p0}, Lcom/android/systemui/assist/-$$Lambda$PhoneStateMonitor$kU1yau2iyc4oGSlu9ejSJU0AW3w;-><init>(Lcom/android/systemui/assist/PhoneStateMonitor;)V

    invoke-interface {p4, p3}, Lcom/android/systemui/BootCompleteCache;->addListener(Lcom/android/systemui/BootCompleteCache$BootCompleteListener;)Z

    .line 88
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    sget-object p4, Lcom/android/systemui/assist/PhoneStateMonitor;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    .line 90
    invoke-virtual {p3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance p4, Lcom/android/systemui/assist/PhoneStateMonitor$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/assist/PhoneStateMonitor$1;-><init>(Lcom/android/systemui/assist/PhoneStateMonitor;)V

    invoke-virtual {p2, p4, p3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 98
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/systemui/assist/PhoneStateMonitor;->isLauncherShowing(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mLauncherShowing:Z

    .line 99
    new-instance p2, Lcom/android/systemui/assist/PhoneStateMonitor$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/assist/PhoneStateMonitor$2;-><init>(Lcom/android/systemui/assist/PhoneStateMonitor;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/assist/PhoneStateMonitor;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mDefaultHome:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$100()Landroid/content/ComponentName;
    .locals 1

    .line 51
    invoke-static {}, Lcom/android/systemui/assist/PhoneStateMonitor;->getCurrentDefaultHome()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/assist/PhoneStateMonitor;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mLauncherShowing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/assist/PhoneStateMonitor;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/PhoneStateMonitor;->isLauncherShowing(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method private static getCurrentDefaultHome()Landroid/content/ComponentName;
    .locals 6

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/high16 v1, -0x80000000

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    move-object v3, v2

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 131
    iget v5, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v5, v1, :cond_2

    .line 132
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 133
    iget v1, v4, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_1

    :cond_2
    if-ne v5, v1, :cond_1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method private getPhoneAppState()I
    .locals 1

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/assist/PhoneStateMonitor;->isAppImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x9

    return p0

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/PhoneStateMonitor;->isAppFullscreen()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const/16 p0, 0x8

    return p0
.end method

.method private getPhoneLauncherState()I
    .locals 1

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/assist/PhoneStateMonitor;->isLauncherInOverview()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x6

    return p0

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/PhoneStateMonitor;->isLauncherInAllApps()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0
.end method

.method private getPhoneLockscreenState()I
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/assist/PhoneStateMonitor;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/PhoneStateMonitor;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/assist/PhoneStateMonitor;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method

.method private isAppFullscreen()Z
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mStatusBarOptionalLazy:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inFullscreenMode()Z

    move-result p0

    return p0
.end method

.method private isAppImmersive()Z
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mStatusBarOptionalLazy:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inImmersiveMode()Z

    move-result p0

    return p0
.end method

.method private isBouncerShowing()Z
    .locals 1

    .line 200
    iget-object p0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mStatusBarOptionalLazy:Ljava/util/Optional;

    sget-object v0, Lcom/android/systemui/assist/-$$Lambda$PhoneStateMonitor$m-3mFsd47OeaWHKnwhE-EoNbkyA;->INSTANCE:Lcom/android/systemui/assist/-$$Lambda$PhoneStateMonitor$m-3mFsd47OeaWHKnwhE-EoNbkyA;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 201
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isDozing()Z
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p0

    return p0
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .line 206
    iget-object p0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-eqz p0, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLauncherInAllApps()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isLauncherInOverview()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isLauncherShowing(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 187
    :cond_0
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mDefaultHome:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isShadeFullscreen()Z
    .locals 2

    .line 174
    iget-object p0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic lambda$isBouncerShowing$1(Ldagger/Lazy;)Ljava/lang/Boolean;
    .locals 0

    .line 201
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 87
    invoke-static {}, Lcom/android/systemui/assist/PhoneStateMonitor;->getCurrentDefaultHome()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mDefaultHome:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public getPhoneState()I
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/assist/PhoneStateMonitor;->isShadeFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneLockscreenState()I

    move-result p0

    goto :goto_0

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mLauncherShowing:Z

    if-eqz v0, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneLauncherState()I

    move-result p0

    goto :goto_0

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneAppState()I

    move-result p0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$PhoneStateMonitor()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/assist/PhoneStateMonitor;->lambda$new$0()V

    return-void
.end method
