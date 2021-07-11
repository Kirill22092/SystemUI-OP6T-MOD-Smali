.class public final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;
.super Ljava/lang/Object;
.source "ConversationNotifications.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    const-string v1, "entry.ranking"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isConversation()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;-><init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 124
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnExpansionChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpansionChangedListener;)V

    .line 133
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result p0

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;->invoke(Z)V

    return-void
.end method

.method public onEntryReinflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->onEntryInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;ZI)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/internal/statusbar/NotificationVisibility;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "entry"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->access$removeTrackedEntry(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onNotificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 11
    .param p1    # Landroid/service/notification/NotificationListenerService$RankingMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rankingMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$1;

    .line 82
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->access$getStates$p(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string/jumbo v2, "states.keys"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 84
    new-instance v2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$activeConversationEntries$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$activeConversationEntries$1;-><init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;)V

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 86
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    const-string v4, "entry.sbn"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isConversation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    const-string v4, "ranking.channel"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v3

    .line 90
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getLayouts()[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 88
    invoke-static {v4}, Lkotlin/collections/ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 89
    sget-object v5, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$1;

    invoke-static {v4, v5}, Lkotlin/sequences/SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 90
    sget-object v5, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$2;

    invoke-static {v4, v5}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object v4

    :goto_1
    const/4 v5, 0x0

    .line 93
    invoke-interface {v4}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ConversationLayout;

    .line 94
    invoke-virtual {v6}, Lcom/android/internal/widget/ConversationLayout;->isImportantConversation()Z

    move-result v7

    if-ne v3, v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 98
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isMarkedForUserTriggeredMovement()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 101
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->access$getMainHandler$p(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$2;

    invoke-direct {v8, v6, v3}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$2;-><init>(Lcom/android/internal/widget/ConversationLayout;Z)V

    const/16 v6, 0x3c0

    int-to-long v9, v6

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {v6, v3}, Lcom/android/internal/widget/ConversationLayout;->setIsImportantConversation(Z)V

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->access$getNotificationGroupManager$p(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateIsolation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method
