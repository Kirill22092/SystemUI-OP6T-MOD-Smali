.class public final Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;
.super Ljava/lang/Object;
.source "NotifViewManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotifViewManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotifViewManager.kt\ncom/android/systemui/statusbar/notification/collection/NotifViewManager\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,204:1\n1084#2:205\n1085#2:208\n415#2,2:209\n1591#3,2:206\n1591#3,2:211\n1313#3:213\n1382#3,3:214\n*E\n*S KotlinDebug\n*F\n+ 1 NotifViewManager.kt\ncom/android/systemui/statusbar/notification/collection/NotifViewManager\n*L\n95#1:205\n95#1:208\n135#1,2:209\n95#1,2:206\n144#1,2:211\n193#1:213\n193#1,3:214\n*E\n"
.end annotation


# instance fields
.field private final featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private listContainer:Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;

.field private final rowRegistry:Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;

.field private final stabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/FeatureFlags;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rowRegistry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stabilityManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->rowRegistry:Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->stabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    .line 45
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    return-void
.end method

.method private final attachRows(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    .line 1591
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "listContainer"

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 147
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->rowRegistry:Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    if-eqz v6, :cond_b

    const-string v7, "entry.representativeEntry!!"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;->requireView(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;

    move-result-object v5

    .line 149
    invoke-interface {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getView()Landroid/view/View;

    move-result-object v6

    const-string v7, "listItem.view"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_2

    .line 150
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->listContainer:Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;

    if-eqz v6, :cond_1

    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;->addListItem(Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;)V

    .line 151
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->stabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    goto :goto_1

    .line 150
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 154
    :cond_2
    :goto_1
    instance-of v6, v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v6, :cond_0

    .line 155
    move-object v6, v2

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getChildren()Ljava/util/List;

    move-result-object v7

    const-string v8, "entry.children"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 156
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->rowRegistry:Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;

    const-string v11, "childEntry"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;->requireView(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;

    move-result-object v9

    .line 159
    invoke-interface {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getAttachedChildren()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getAttachedChildren()Ljava/util/List;

    move-result-object v10

    const-string v11, "listItem.attachedChildren"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v9}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 161
    :cond_3
    invoke-interface {v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getView()Landroid/view/View;

    move-result-object v10

    const-string v11, "childListItem.view"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 162
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "trying to add a notification child that already has a parent. class: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-interface {v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\n child: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    :cond_5
    invoke-interface {v5, v9, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->addChildNotification(Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;I)V

    .line 170
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->stabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    .line 171
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->listContainer:Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;

    if-eqz v10, :cond_7

    invoke-interface {v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getView()Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v9}, Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;->notifyGroupChildAdded(Landroid/view/View;)V

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_8
    if-nez v1, :cond_a

    .line 178
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->getChildListFromParent(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/util/List;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->stabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 177
    invoke-interface {v5, v1, v2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    move v1, v0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v1, 0x1

    .line 182
    :goto_4
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getUntruncatedChildCount()I

    move-result v2

    invoke-interface {v5, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->setUntruncatedChildCount(I)V

    goto/16 :goto_0

    .line 147
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    :cond_c
    if-eqz v1, :cond_e

    .line 187
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->listContainer:Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;->generateChildOrderChangedEvent()V

    goto :goto_5

    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_e
    :goto_5
    return-void
.end method

.method private final detachRows(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->listContainer:Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;

    const/4 v1, 0x0

    const-string v2, "listContainer"

    if-eqz v0, :cond_d

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->getListItems(Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 91
    sget-object v3, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$detachRows$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$detachRows$1;

    invoke-static {v0, v3}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 1084
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;

    .line 96
    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    const-string v5, "listItem.entry"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v4

    sget-object v6, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    .line 97
    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v7

    .line 99
    :goto_1
    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eqz v4, :cond_7

    .line 103
    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->isSummaryWithChildren()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->removeAllChildren()V

    :cond_2
    if-eqz v5, :cond_4

    .line 109
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->listContainer:Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;

    if-eqz v4, :cond_3

    invoke-interface {v4, v6}, Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;->setChildTransferInProgress(Z)V

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->listContainer:Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;

    if-eqz v4, :cond_6

    invoke-interface {v4, v3}, Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;->removeListItem(Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;)V

    .line 112
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->listContainer:Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;

    if-eqz v3, :cond_5

    invoke-interface {v3, v7}, Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;->setChildTransferInProgress(Z)V

    goto :goto_0

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_7
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v4, :cond_0

    .line 115
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getChildren()Ljava/util/List;

    move-result-object v4

    const-string v5, "(entries[idx] as GroupEntry).children"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getAttachedChildren()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1591
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;

    const-string v7, "listChild"

    .line 117
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 118
    invoke-interface {v3, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->removeChildNotification(Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;)V

    .line 122
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->listContainer:Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;

    if-eqz v7, :cond_a

    .line 123
    invoke-interface {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getView()Landroid/view/View;

    move-result-object v8

    const-string v9, "listChild.view"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getView()Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_9

    check-cast v6, Landroid/view/ViewGroup;

    .line 122
    invoke-interface {v7, v8, v6}, Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;->notifyGroupChildRemoved(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_3

    .line 123
    :cond_9
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_b
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.android.systemui.statusbar.notification.collection.GroupEntry"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    return-void

    .line 90
    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final getChildListFromParent(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;",
            ">;"
        }
    .end annotation

    .line 192
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v0, :cond_1

    .line 193
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    const-string v0, "parent.children"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1313
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1382
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1383
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 193
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->rowRegistry:Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;

    const-string v3, "child"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;->requireView(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 197
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getListItems(Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;)Lkotlin/sequences/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;->getContainerChildCount()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 134
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$getListItems$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$getListItems$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;)V

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 416
    sget-object p1, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$getListItems$$inlined$filterIsInstance$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$getListItems$$inlined$filterIsInstance$1;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.sequences.Sequence<R>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$attach$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->setOnRenderListListener(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$OnRenderListListener;)V

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "fd"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pw"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "args"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onNotifTreeBuilt(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notifList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->detachRows(Ljava/util/List;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->attachRows(Ljava/util/List;)V

    return-void
.end method

.method public final setViewConsumer(Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;->listContainer:Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;

    return-void
.end method
