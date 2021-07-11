.class public Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;
.super Lcom/oneplus/systemui/statusbar/notification/OpNotificationInterruptStateProvider;
.source "NotificationInterruptStateProviderImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;


# instance fields
.field private final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private mContactsObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mIsContactsChanged:Z

.field private final mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mSuppressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;",
            ">;"
        }
    .end annotation
.end field

.field protected mUseHeadsUp:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/os/PowerManager;Landroid/service/dreams/IDreamManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/notification/NotificationFilter;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/os/Handler;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/notification/OpNotificationInterruptStateProvider;-><init>()V

    .line 82
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    const/4 p6, 0x0

    .line 93
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUseHeadsUp:Z

    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 113
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 114
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 116
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 117
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    .line 118
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 119
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 120
    new-instance p1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$1;

    invoke-direct {p1, p0, p9}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 141
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "heads_up_notifications_enabled"

    .line 142
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 p4, 0x1

    .line 141
    invoke-virtual {p1, p2, p4, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "ticker_gets_heads_up"

    .line 146
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 145
    invoke-virtual {p1, p2, p4, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/notification/OpNotificationInterruptStateProvider;->init()V

    .line 155
    new-instance p1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$2;

    invoke-direct {p1, p0, p9}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$2;-><init>(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mContactsObserver:Landroid/database/ContentObserver;

    .line 161
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p4, p1, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;)Landroid/content/ContentResolver;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mIsContactsChanged:Z

    return p1
.end method

.method private canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    .line 498
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 500
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 501
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    invoke-interface {v3, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;->suppressAwakeInterruptions(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 503
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No alerting: aborted by suppressor: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    .line 504
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " sbnKey="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InterruptionStateProvider"

    .line 503
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    .line 454
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    const-string v2, "InterruptionStateProvider"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 458
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No alerting: filtered notification: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 464
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "No alerting: suppressed due to group alert behavior"

    .line 466
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    move v1, v3

    .line 471
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 472
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    invoke-interface {v4, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;->suppressInterruptions(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No alerting: aborted by suppressor: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    .line 475
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " sbnKey="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 474
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasJustLaunchedFullScreenIntent()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 483
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No alerting: recent fullscreen: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isSnoozed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private shouldHeadsUpWhenAwake(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 6

    .line 286
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 288
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUseHeadsUp:Z

    const-string v2, "InterruptionStateProvider"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p0, "No heads up: no huns"

    .line 290
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 295
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    .line 299
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    .line 303
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No alerting: snoozed package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 310
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_4

    move v1, v4

    goto :goto_0

    :cond_4
    move v1, v3

    .line 311
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    .line 313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: in unlocked shade where notification is shown as a bubble: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 313
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 319
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressPeek()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: suppressed by DND: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 326
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result v1

    const/4 v5, 0x4

    if-ge v1, v5, :cond_7

    .line 328
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: unimportant notification: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 335
    :cond_7
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v5, "Failed to query dream manager."

    .line 337
    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 339
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    move v4, v3

    :goto_2
    if-nez v4, :cond_9

    .line 343
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: not in use: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_9
    move v1, v3

    .line 348
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 349
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    invoke-interface {v4, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;->suppressAwakeHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No heads up: aborted by suppressor: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    .line 352
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " sbnKey="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 351
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 360
    :cond_b
    invoke-super {p0, v0}, Lcom/oneplus/systemui/statusbar/notification/OpNotificationInterruptStateProvider;->shouldHeadsUp(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method private shouldHeadsUpWhenDozing(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    .line 375
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "InterruptionStateProvider"

    if-nez v1, :cond_0

    .line 379
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No pulsing: disabled by setting: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 396
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No pulsing: notification shouldn\'t alert: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 403
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressAmbient()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No pulsing: ambient effect suppressed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 410
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result v1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_3

    .line 412
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No pulsing: not important enough: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 418
    :cond_3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_4

    .line 420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No pulsing: notification with fullScreenIntent: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 427
    :cond_4
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.oneplus.dialer"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 428
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.android.dialer"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 429
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.google.android.dialer"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 431
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result v1

    const/4 v4, 0x4

    if-ge v1, v4, :cond_6

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/notification/OpNotificationInterruptStateProvider;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    .line 432
    invoke-virtual {v1}, Lcom/oneplus/notification/OpNotificationController;->getCallState()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    .line 434
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No pulsing: dialer off hook and not important enough: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 441
    :cond_6
    invoke-super {p0, p1}, Lcom/oneplus/systemui/statusbar/notification/OpNotificationInterruptStateProvider;->shouldPulse(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addSuppressor(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isContactsChanged()Z
    .locals 0

    .line 618
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mIsContactsChanged:Z

    return p0
.end method

.method public setIsContactsChanged(Z)V
    .locals 0

    .line 623
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mIsContactsChanged:Z

    return-void
.end method

.method public shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    .line 173
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 175
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 179
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 183
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->canBubble()Z

    move-result v1

    const-string v3, "InterruptionStateProvider"

    if-nez v1, :cond_2

    .line 185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No bubble up: not allowed to bubble: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 190
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 191
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 192
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 204
    :cond_3
    invoke-super {p0, p1}, Lcom/oneplus/systemui/statusbar/notification/OpNotificationInterruptStateProvider;->shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0

    .line 194
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No bubble up: notification: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t have valid metadata"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozingCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->shouldHeadsUpWhenAwake(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0

    .line 268
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->shouldHeadsUpWhenDozing(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public shouldHeadsUpWithReason(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 6

    .line 519
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 521
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUseHeadsUp:Z

    const-string v2, "InterruptionStateProvider"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p0, "No heads up: no huns"

    .line 523
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 531
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    .line 538
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    .line 545
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v3

    .line 546
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 548
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: in unlocked shade where notification is shown as a bubble: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 548
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 557
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressPeek()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 559
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: suppressed by DND: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 567
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result v1

    const/4 v5, 0x4

    if-ge v1, v5, :cond_6

    .line 569
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: unimportant notification: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 579
    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v5, "Failed to query dream manager."

    .line 581
    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 583
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    move v4, v3

    :goto_2
    if-nez v4, :cond_8

    .line 587
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: not in use: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    move v1, v3

    .line 595
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 596
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    invoke-interface {v4, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;->suppressAwakeHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 598
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No heads up: aborted by suppressor: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    .line 599
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " sbnKey="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 598
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 611
    :cond_a
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/notification/OpNotificationInterruptStateProvider;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    invoke-virtual {p0, v0}, Lcom/oneplus/notification/OpNotificationController;->canHeadsUp(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    return p0
.end method

.method public shouldLaunchFullScreenIntentWhenAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    .line 280
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 282
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
