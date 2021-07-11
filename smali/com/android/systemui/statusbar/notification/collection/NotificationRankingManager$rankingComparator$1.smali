.class final Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;
.super Ljava/lang/Object;
.source "NotificationRankingManager.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;-><init>(Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationFilter;Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "a"

    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    const-string v4, "a.sbn"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "b"

    .line 73
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    const-string v5, "b.sbn"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v5

    const-string v6, "a.ranking"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v5

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v6

    const-string v7, "b.ranking"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v6

    .line 77
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManagerKt;->access$isColorizedForegroundService(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    .line 78
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManagerKt;->access$isColorizedForegroundService(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v8

    .line 80
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v9, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v9

    .line 81
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v10, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v10

    .line 83
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v11, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$isImportantMedia(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v11

    .line 84
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v12, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$isImportantMedia(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v12

    .line 86
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManagerKt;->access$isSystemMax(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v13

    .line 87
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManagerKt;->access$isSystemMax(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v14

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowHeadsUp()Z

    move-result v15

    move-object/from16 v16, v3

    .line 90
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowHeadsUp()Z

    move-result v3

    move-object/from16 v17, v4

    .line 92
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$isHighPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    move/from16 v18, v5

    .line 93
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$isHighPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v5

    move/from16 v19, v6

    .line 96
    iget-boolean v6, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsGamingModeNotification:Z

    move/from16 v20, v4

    .line 97
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsGamingModeNotification:Z

    const/16 v21, 0x1

    const/16 v22, -0x1

    if-eq v15, v3, :cond_0

    if-eqz v15, :cond_a

    :goto_0
    move/from16 v21, v22

    goto :goto_1

    :cond_0
    if-eqz v15, :cond_1

    .line 102
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$getHeadsUpManager$p(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v21

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    if-eq v7, v8, :cond_4

    if-eqz v7, :cond_a

    goto :goto_0

    .line 108
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$getUsePeopleFiltering$p(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eq v9, v10, :cond_5

    .line 109
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$getPeopleNotificationIdentifier$p(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    move-result-object v0

    invoke-interface {v0, v9, v10}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;->compareTo(II)I

    move-result v21

    goto :goto_1

    :cond_5
    if-eq v11, v12, :cond_6

    if-eqz v11, :cond_a

    goto :goto_0

    :cond_6
    if-eq v13, v14, :cond_7

    if-eqz v13, :cond_a

    goto :goto_0

    :cond_7
    move/from16 v0, v20

    if-eq v0, v5, :cond_8

    .line 115
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    mul-int/lit8 v21, v0, -0x1

    goto :goto_1

    :cond_8
    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    sub-int v21, v0, v1

    goto :goto_1

    .line 117
    :cond_9
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    cmp-long v21, v0, v2

    :cond_a
    :goto_1
    return v21
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 53
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    return p0
.end method
