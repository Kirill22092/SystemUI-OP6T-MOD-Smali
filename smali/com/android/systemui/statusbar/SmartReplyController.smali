.class public Lcom/android/systemui/statusbar/SmartReplyController;
.super Ljava/lang/Object;
.source "SmartReplyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SmartReplyController$Callback;
    }
.end annotation


# instance fields
.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mCallback:Lcom/android/systemui/statusbar/SmartReplyController$Callback;

.field private final mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mSendingKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/NotificationClickNotifier;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mSendingKeys:Ljava/util/Set;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 50
    iput-object p3, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    return-void
.end method


# virtual methods
.method public isSendingSmartReply(Ljava/lang/String;)Z
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mSendingKeys:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setCallback(Lcom/android/systemui/statusbar/SmartReplyController$Callback;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mCallback:Lcom/android/systemui/statusbar/SmartReplyController$Callback;

    return-void
.end method

.method public smartActionClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/app/Notification$Action;Z)V
    .locals 11

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsCount()I

    move-result v0

    .line 79
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v1

    .line 81
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v2

    .line 83
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 82
    invoke-static {v3, v1, v0, v4, v2}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v9

    .line 84
    iget-object v5, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    .line 85
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    move v7, p2

    move-object v8, p3

    move v10, p4

    .line 84
    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/statusbar/NotificationClickNotifier;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V

    return-void
.end method

.method public smartReplySent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILjava/lang/CharSequence;IZ)V
    .locals 8

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mCallback:Lcom/android/systemui/statusbar/SmartReplyController$Callback;

    invoke-interface {v0, p1, p3}, Lcom/android/systemui/statusbar/SmartReplyController$Callback;->onSmartReplySent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mSendingKeys:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public smartSuggestionsAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;IIZZ)V
    .locals 6

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public stopSending(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mSendingKeys:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
