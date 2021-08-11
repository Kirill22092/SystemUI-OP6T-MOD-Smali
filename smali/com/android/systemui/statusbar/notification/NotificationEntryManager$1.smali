.class Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;
.super Ljava/lang/Object;
.source "NotificationEntryManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleInflationException(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$000(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    return-void
.end method

.method public onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasJustLaunchedFullScreenIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notifyFullScreenIntentLaunched()V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAsyncInflationFinished, update lastFullScreenIntentLaunchTime from cached entry, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationEntryMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mCachedNotifications:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$200(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;->logNotifInflated(Ljava/lang/String;Z)V

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$300(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onEntryInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$400(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-string v1, "onAsyncInflationFinished"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$300(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->access$300(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryListener;->onEntryReinflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_3

    :cond_5
    return-void
.end method
