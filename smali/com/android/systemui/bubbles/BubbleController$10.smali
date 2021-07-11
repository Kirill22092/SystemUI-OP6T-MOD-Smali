.class Lcom/android/systemui/bubbles/BubbleController$10;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/bubbles/BubbleData$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleController;
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

    .line 1313
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyUpdate(Lcom/android/systemui/bubbles/BubbleData$Update;)V
    .locals 9

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1500(Lcom/android/systemui/bubbles/BubbleController;)V

    .line 1320
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleController;->loadOverflowBubblesFromDisk()V

    .line 1322
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1600(Lcom/android/systemui/bubbles/BubbleController;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1600(Lcom/android/systemui/bubbles/BubbleController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1327
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->expandedChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->expanded:Z

    if-nez v0, :cond_1

    .line 1328
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->setExpanded(Z)V

    .line 1329
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1900(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v2}, Lcom/android/systemui/bubbles/BubbleController;->access$1800(Lcom/android/systemui/bubbles/BubbleController;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setForceHasTopUi(Z)V

    .line 1333
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1337
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/bubbles/Bubble;

    .line 1338
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1340
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v5}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1341
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v5}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/bubbles/BubbleStackView;->removeBubble(Lcom/android/systemui/bubbles/Bubble;)V

    :cond_3
    const/16 v5, 0x8

    if-ne v3, v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x5

    if-ne v3, v5, :cond_5

    .line 1349
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v6}, Lcom/android/systemui/bubbles/BubbleController;->access$1300(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v6

    .line 1352
    invoke-virtual {v4}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 1351
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingOrActiveNotif(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    .line 1353
    iget-object v7, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v7}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1354
    iget-object v7, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v7}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1355
    invoke-virtual {v4}, Lcom/android/systemui/bubbles/Bubble;->showInShade()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eq v3, v5, :cond_6

    const/16 v5, 0x9

    if-ne v3, v5, :cond_8

    .line 1360
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleController;->access$2000(Lcom/android/systemui/bubbles/BubbleController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/bubbles/BubbleController$NotifCallback;

    if-eqz v6, :cond_7

    const/4 v5, 0x2

    .line 1362
    invoke-interface {v4, v6, v5}, Lcom/android/systemui/bubbles/BubbleController$NotifCallback;->removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    goto :goto_1

    .line 1366
    :cond_8
    invoke-virtual {v4}, Lcom/android/systemui/bubbles/Bubble;->isBubble()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1367
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v3, v4, v1}, Lcom/android/systemui/bubbles/BubbleController;->access$2100(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/Bubble;Z)V

    :cond_9
    if-eqz v6, :cond_a

    .line 1369
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1370
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBubbleButton()V

    :cond_a
    if-eqz v6, :cond_2

    .line 1376
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    .line 1377
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v4}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    .line 1378
    invoke-static {v5}, Lcom/android/systemui/bubbles/BubbleController;->access$1300(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v5

    .line 1377
    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/bubbles/BubbleData;->getBubblesInGroup(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1378
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1380
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleController;->access$2000(Lcom/android/systemui/bubbles/BubbleController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/bubbles/BubbleController$NotifCallback;

    .line 1381
    invoke-interface {v4, v6}, Lcom/android/systemui/bubbles/BubbleController$NotifCallback;->maybeCancelSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_2

    .line 1386
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$2200(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleDataRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$600(Lcom/android/systemui/bubbles/BubbleController;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/bubbles/BubbleDataRepository;->removeBubbles(ILjava/util/List;)V

    .line 1388
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->addedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1389
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$2200(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleDataRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$600(Lcom/android/systemui/bubbles/BubbleController;)I

    move-result v1

    iget-object v2, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->addedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/bubbles/BubbleDataRepository;->addBubble(ILcom/android/systemui/bubbles/Bubble;)V

    .line 1390
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->addedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->addBubble(Lcom/android/systemui/bubbles/Bubble;)V

    .line 1393
    :cond_c
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->updateBubble(Lcom/android/systemui/bubbles/Bubble;)V

    .line 1399
    :cond_d
    iget-boolean v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$2200(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleDataRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$600(Lcom/android/systemui/bubbles/BubbleController;)I

    move-result v1

    iget-object v2, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/bubbles/BubbleDataRepository;->addBubbles(ILjava/util/List;)V

    .line 1401
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->updateBubbleOrder(Ljava/util/List;)V

    .line 1404
    :cond_e
    iget-boolean v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->selectionChanged:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1405
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->setSelectedBubble(Lcom/android/systemui/bubbles/BubbleViewProvider;)V

    .line 1406
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_f

    .line 1407
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1300(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 1408
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingOrActiveNotif(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1410
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$1400(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 1416
    :cond_f
    iget-boolean v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->expandedChanged:Z

    if-eqz v0, :cond_10

    iget-boolean p1, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->expanded:Z

    if-eqz p1, :cond_10

    .line 1417
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 1418
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->setExpanded(Z)V

    .line 1419
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$1900(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->getForceHasTopUi()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/bubbles/BubbleController;->access$1802(Lcom/android/systemui/bubbles/BubbleController;Z)Z

    .line 1420
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$1900(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setForceHasTopUi(Z)V

    .line 1424
    :cond_10
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$2000(Lcom/android/systemui/bubbles/BubbleController;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleController$NotifCallback;

    const-string v1, "BubbleData.Listener.applyUpdate"

    .line 1425
    invoke-interface {v0, v1}, Lcom/android/systemui/bubbles/BubbleController$NotifCallback;->invalidateNotifications(Ljava/lang/String;)V

    goto :goto_3

    .line 1427
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$10;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->updateStack()V

    return-void
.end method
