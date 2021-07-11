.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;
.super Ljava/lang/Object;
.source "KeyguardCoordinator.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mContext:Landroid/content/Context;

.field private final mHighPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

.field private final mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$1;

    const-string v1, "KeyguardCoordinator"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    .line 211
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$4;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 224
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$5;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 233
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$6;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mMainHandler:Landroid/os/Handler;

    .line 79
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 80
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 81
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 82
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 83
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 84
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mHighPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->priorityExceedsLockscreenShowingThreshold(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->invalidateListFromFilter(Ljava/lang/String;)V

    return-void
.end method

.method private hideSilentNotificationsOnLockscreen()Z
    .locals 2

    .line 159
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_silent_notifications"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private invalidateListFromFilter(Ljava/lang/String;)V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList()V

    return-void
.end method

.method private priorityExceedsLockscreenShowingThreshold(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->useNewInterruptionModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->hideSilentNotificationsOnLockscreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mHighPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result p0

    return p0

    .line 153
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 154
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private setupInvalidateNotifListCallbacks()V
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 169
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;Landroid/os/Handler;)V

    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    .line 179
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 178
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    .line 185
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x1

    .line 184
    invoke-virtual {v1, v2, v5, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode"

    .line 191
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 190
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->setupInvalidateNotifListCallbacks()V

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    return-void
.end method
