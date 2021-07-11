.class Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;
.super Ljava/lang/Object;
.source "NotifCollection.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$BatchableNotificationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/collection/NotifCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationBatchPosted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;",
            ">;)V"
        }
    .end annotation

    .line 754
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->access$100(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Ljava/util/List;)V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 749
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->access$000(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 770
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->access$300(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->access$200(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method public onNotificationsInitialized()V
    .locals 0

    .line 775
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->access$400(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V

    return-void
.end method
