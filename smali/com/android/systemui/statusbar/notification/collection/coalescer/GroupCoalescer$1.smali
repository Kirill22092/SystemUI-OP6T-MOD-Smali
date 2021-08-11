.class Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;
.super Ljava/lang/Object;
.source "GroupCoalescer.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->access$000(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/StatusBarNotification;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->access$100(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->access$200(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->access$300(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;)Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;->logEventCoalesced(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->access$400(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;)Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->access$400(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;)Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :goto_0
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->access$100(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->access$400(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;)Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->access$000(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/StatusBarNotification;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->access$100(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->access$400(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;)Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method public onNotificationsInitialized()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->access$400(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;)Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationsInitialized()V

    return-void
.end method
