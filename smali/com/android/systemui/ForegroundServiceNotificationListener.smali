.class public Lcom/android/systemui/ForegroundServiceNotificationListener;
.super Ljava/lang/Object;
.source "ForegroundServiceNotificationListener.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/ForegroundServiceController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/ForegroundServiceLifetimeExtender;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 61
    iput-object p3, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 62
    new-instance p1, Lcom/android/systemui/ForegroundServiceNotificationListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/ForegroundServiceNotificationListener$1;-><init>(Lcom/android/systemui/ForegroundServiceNotificationListener;)V

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 82
    iget-object p1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1, p5}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/NotificationLifetimeExtender;)V

    .line 84
    new-instance p1, Lcom/android/systemui/ForegroundServiceNotificationListener$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/ForegroundServiceNotificationListener$2;-><init>(Lcom/android/systemui/ForegroundServiceNotificationListener;)V

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ForegroundServiceNotificationListener;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ForegroundServiceNotificationListener;->addNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/ForegroundServiceNotificationListener;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ForegroundServiceNotificationListener;->updateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/ForegroundServiceNotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/ForegroundServiceNotificationListener;->removeNotification(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/ForegroundServiceNotificationListener;)Lcom/android/systemui/ForegroundServiceController;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    return-object p0
.end method

.method private addNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ForegroundServiceNotificationListener;->updateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method

.method private synthetic lambda$updateNotification$0(Landroid/service/notification/StatusBarNotification;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/ForegroundServicesUserState;)Z
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ForegroundServiceController;->isDisclosureNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p2, :cond_2

    const-string v0, "android.foregroundApps"

    .line 154
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 156
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-wide v2, p1, Landroid/app/Notification;->when:J

    invoke-virtual {p4, p2, v2, v3}, Lcom/android/systemui/ForegroundServicesUserState;->setRunningServices([Ljava/lang/String;J)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v0, v2}, Lcom/android/systemui/ForegroundServicesUserState;->removeNotification(Ljava/lang/String;Ljava/lang/String;)Z

    .line 160
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    if-le p2, v1, :cond_1

    .line 163
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 164
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p4, p2, v0}, Lcom/android/systemui/ForegroundServicesUserState;->addImportantNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 168
    invoke-static {p2, v0}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 170
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->usesStandardHeader()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 172
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p4, p2, p1}, Lcom/android/systemui/ForegroundServicesUserState;->addStandardLayoutNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_2
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/systemui/ForegroundServiceNotificationListener;->tagAppOps(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return v1
.end method

.method private removeNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 114
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    new-instance v2, Lcom/android/systemui/ForegroundServiceNotificationListener$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/ForegroundServiceNotificationListener$3;-><init>(Lcom/android/systemui/ForegroundServiceNotificationListener;Landroid/service/notification/StatusBarNotification;)V

    const/4 p0, 0x0

    .line 113
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/ForegroundServiceController;->updateUserState(ILcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;Z)Z

    return-void
.end method

.method private tagAppOps(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 184
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 185
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 186
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    .line 187
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/ForegroundServiceController;->getAppOps(ILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 188
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    if-eqz p0, :cond_0

    .line 191
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 193
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private updateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 4

    .line 147
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 149
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    new-instance v3, Lcom/android/systemui/-$$Lambda$ForegroundServiceNotificationListener$bKAGLLFV59EYZBLeV36rpndtUhU;

    invoke-direct {v3, p0, v0, p2, p1}, Lcom/android/systemui/-$$Lambda$ForegroundServiceNotificationListener$bKAGLLFV59EYZBLeV36rpndtUhU;-><init>(Lcom/android/systemui/ForegroundServiceNotificationListener;Landroid/service/notification/StatusBarNotification;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const/4 p0, 0x1

    .line 148
    invoke-virtual {v1, v2, v3, p0}, Lcom/android/systemui/ForegroundServiceController;->updateUserState(ILcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;Z)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateNotification$0$ForegroundServiceNotificationListener(Landroid/service/notification/StatusBarNotification;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/ForegroundServicesUserState;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/ForegroundServiceNotificationListener;->lambda$updateNotification$0(Landroid/service/notification/StatusBarNotification;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/ForegroundServicesUserState;)Z

    move-result p0

    return p0
.end method
