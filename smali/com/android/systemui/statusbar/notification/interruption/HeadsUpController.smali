.class public Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;
.super Ljava/lang/Object;
.source "HeadsUpController.java"


# instance fields
.field private mCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

.field private mHandler:Landroid/os/Handler;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

.field private final mInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

.field private final mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field private mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

.field private final mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/NotificationListener;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-class v0, Lcom/oneplus/notification/OpNotificationController;

    .line 70
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/notification/OpNotificationController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 278
    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$2;-><init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    .line 87
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 88
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    .line 89
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 90
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 91
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 92
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->shouldDelayInComingCall(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/oneplus/notification/OpNotificationController;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->showAlertingView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->updateHunState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->stopAlerting(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static alertAgain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasInterrupted()Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_0

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

.method private setNotificationShown(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 241
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "HeadsUpBindController"

    const-string v0, "failed setNotificationsShown: "

    .line 243
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private shouldDelayInComingCall(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    .line 188
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 190
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p1

    const-string v3, "phone_incoming_call"

    .line 191
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 192
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->isContactsChanged()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private showAlertingView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    const-string v0, "HeadsUpBindController"

    const-string v1, "check the time of running showAlertingView"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->setNotificationShown(Landroid/service/notification/StatusBarNotification;)V

    const-string p0, "end of showAlertingView"

    .line 208
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private stopAlerting(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 251
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 258
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 260
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 261
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    :cond_3
    return-void
.end method

.method private updateHunState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5

    .line 214
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->alertAgain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification;)Z

    move-result v0

    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    .line 222
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 223
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozingCustom()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    .line 229
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateNotification(Ljava/lang/String;Z)V

    goto :goto_2

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isEntryAutoHeadsUpped(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 232
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/notification/interruption/-$$Lambda$mD6sR9LpFDm1_8U141Um56czoN4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/interruption/-$$Lambda$mD6sR9LpFDm1_8U141Um56czoN4;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->bindHeadsUpView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    return-void
.end method
