.class public Lcom/android/systemui/ForegroundServiceLifetimeExtender;
.super Ljava/lang/Object;
.source "ForegroundServiceLifetimeExtender.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationLifetimeExtender;


# static fields
.field static final MIN_FGS_TIME_MS:I = 0x1388
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mInteractionTracker:Lcom/android/systemui/statusbar/NotificationInteractionTracker;

.field private mManagedEntries:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationSafeToRemoveCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

.field private final mSystemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationInteractionTracker;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mManagedEntries:Landroid/util/ArraySet;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mInteractionTracker:Lcom/android/systemui/statusbar/NotificationInteractionTracker;

    return-void
.end method

.method private synthetic lambda$setShouldManageLifetime$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mManagedEntries:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mManagedEntries:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mNotificationSafeToRemoveCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;->onSafeToRemove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$setShouldManageLifetime$0$ForegroundServiceLifetimeExtender(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->lambda$setShouldManageLifetime$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mNotificationSafeToRemoveCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    return-void
.end method

.method public setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 6

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mManagedEntries:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mManagedEntries:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/systemui/-$$Lambda$ForegroundServiceLifetimeExtender$-eZMtetouaKnxc7j2jqc6zpz_AA;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/-$$Lambda$ForegroundServiceLifetimeExtender$-eZMtetouaKnxc7j2jqc6zpz_AA;-><init>(Lcom/android/systemui/ForegroundServiceLifetimeExtender;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const-wide/16 v0, 0x1388

    iget-object v2, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getCreationTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mInteractionTracker:Lcom/android/systemui/statusbar/NotificationInteractionTracker;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationInteractionTracker;->hasUserInteractedWith(Ljava/lang/String;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getCreationTime()J

    move-result-wide p0

    sub-long/2addr v2, p0

    const-wide/16 p0, 0x1388

    cmp-long p0, v2, p0

    if-gez p0, :cond_2

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public shouldExtendLifetimeForPendingNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method
