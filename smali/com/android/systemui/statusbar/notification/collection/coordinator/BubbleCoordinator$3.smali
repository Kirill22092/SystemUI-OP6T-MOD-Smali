.class Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;
.super Ljava/lang/Object;
.source "BubbleCoordinator.java"

# interfaces
.implements Lcom/android/systemui/bubbles/BubbleController$NotifCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateNotifications(Ljava/lang/String;)V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->access$800(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList()V

    return-void
.end method

.method public maybeCancelSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    return-void
.end method

.method public removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 1

    .line 125
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->access$300(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 126
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->access$200(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->access$100(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor$OnEndDismissInterception;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->access$400(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    .line 128
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->access$500(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    move-result-object p0

    .line 127
    invoke-interface {p2, v0, p1, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor$OnEndDismissInterception;->onEndDismissInterception(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->access$600(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 134
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->access$700(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->access$500(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    :cond_1
    :goto_0
    return-void
.end method
