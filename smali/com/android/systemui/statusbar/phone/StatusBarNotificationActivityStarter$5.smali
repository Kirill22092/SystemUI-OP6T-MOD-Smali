.class Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$5;
.super Ljava/lang/Object;
.source "StatusBarNotificationActivityStarter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->createRemoveRunnable(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$5;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$5;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->access$500(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->hasPulsingNotifications()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->access$700(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$5;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    new-instance v4, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$5;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->access$600(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getShadeListCount()I

    move-result v7

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$5;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p0

    invoke-static {v5, v6, v7, v1, p0}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    invoke-direct {v4, v0, v1, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    return-void
.end method
