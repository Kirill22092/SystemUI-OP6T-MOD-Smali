.class Lcom/android/systemui/bubbles/BubbleController$8;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/bubbles/BubbleController$NotifCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/BubbleController;->setupNEM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$8;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateNotifications(Ljava/lang/String;)V
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$8;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$1300(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    return-void
.end method

.method public maybeCancelSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 628
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$8;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$8;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BubbleData;->removeSuppressedSummary(Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$8;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    .line 633
    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$1300(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController$8;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    .line 634
    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/bubbles/BubbleData;->getSummaryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$8;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$1300(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$8;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    .line 651
    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1400(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 653
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$8;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    .line 654
    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$1400(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalChildren(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;

    move-result-object v1

    .line 655
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v1, :cond_1

    .line 657
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 658
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$8;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$1300(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    :cond_2
    return-void
.end method

.method public removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    .line 616
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$8;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$1300(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    return-void
.end method
