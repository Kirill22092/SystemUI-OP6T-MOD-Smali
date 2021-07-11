.class public Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
.super Lcom/oneplus/systemui/statusbar/OpNotificationViewHierarchyManager;
.source "NotificationViewHierarchyManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;


# instance fields
.field private final mAlwaysExpandNonGroupedNotification:Z

.field private final mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mDynamicChildBindController:Lcom/android/systemui/statusbar/notification/DynamicChildBindController;

.field private final mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mFgsSectionController:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

.field protected final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIsHandleDynamicPrivacyChangeScheduled:Z

.field private mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field protected final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mLowPriorityInflationHelper:Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;

.field private mPerformingUpdate:Z

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mTmpChildOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/DynamicChildBindController;Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/OpNotificationViewHierarchyManager;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    .line 131
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mHandler:Landroid/os/Handler;

    .line 132
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 133
    iput-object p8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 134
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 135
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 136
    check-cast p6, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 137
    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 138
    iput-object p11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mFgsSectionController:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 140
    sget p2, Lcom/android/systemui/R$bool;->config_alwaysExpandNonGroupedNotifications:I

    .line 141
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAlwaysExpandNonGroupedNotification:Z

    .line 142
    iput-object p9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    .line 143
    iput-object p10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 144
    iput-object p12, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mDynamicChildBindController:Lcom/android/systemui/statusbar/notification/DynamicChildBindController;

    .line 145
    iput-object p13, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLowPriorityInflationHelper:Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;

    return-void
.end method

.method private addNotificationChildrenAndSort()V
    .locals 11

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 369
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 370
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 371
    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 376
    :cond_0
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 377
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v5

    .line 378
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_1

    goto :goto_2

    .line 383
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUntruncatedChildCount(I)V

    move v7, v1

    .line 384
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 385
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    if-eqz v5, :cond_2

    .line 386
    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 387
    :cond_2
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 388
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trying to add a notification child that already has a parent. class:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "\n child: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "NotificationViewHierarchyManager"

    .line 388
    invoke-static {v10, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 394
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    .line 395
    invoke-virtual {v4, v8, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->addChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    .line 396
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v9, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->notifyGroupChildAdded(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 398
    :cond_4
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 402
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 404
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_7

    .line 407
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->generateChildOrderChangedEvent()V

    :cond_7
    return-void
.end method

.method private beginUpdate()V
    .locals 3

    .line 575
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    if-eqz v0, :cond_0

    .line 576
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "NotificationViewHierarchyManager"

    const-string v2, "Re-entrant code during update"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    .line 578
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    return-void
.end method

.method private endUpdate()V
    .locals 3

    .line 582
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "NotificationViewHierarchyManager"

    const-string v2, "Manager state has become desynced"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    .line 585
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    return-void
.end method

.method public static synthetic lambda$VZHW9NMJkqBLUXo3lkuiamxmEXo(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->onHandleDynamicPrivacyChanged()V

    return-void
.end method

.method private onHandleDynamicPrivacyChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 570
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsHandleDynamicPrivacyChangeScheduled:Z

    .line 571
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateNotificationViews()V

    return-void
.end method

.method private removeNotificationChildren()V
    .locals 7

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 414
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 415
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 416
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v3, :cond_0

    goto :goto_3

    .line 421
    :cond_0
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 422
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v3

    .line 423
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v3, :cond_5

    .line 426
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 427
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_2

    .line 429
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 430
    :cond_2
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->keepInParent()Z

    move-result v6

    if-nez v6, :cond_1

    .line 431
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 434
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 435
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 436
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 437
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 436
    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    if-nez v5, :cond_4

    .line 440
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 441
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object v6

    .line 440
    invoke-interface {v5, v4, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->notifyGroupChildRemoved(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private updateRowStatesInternal()V
    .locals 13

    const-string v0, "NotificationViewHierarchyManager#updateRowStates"

    .line 459
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v0

    .line 463
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 465
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 466
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v4, v3}, Lcom/android/systemui/statusbar/NotificationPresenter;->getMaxNotificationsWhileLocked(Z)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 468
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v5, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setMaxDisplayedNotifications(I)V

    .line 469
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    sub-int/2addr v0, v3

    :goto_2
    if-ltz v0, :cond_3

    .line 471
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v5, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 472
    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v6, :cond_2

    goto :goto_3

    .line 475
    :cond_2
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    move v0, v2

    .line 477
    :goto_4
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    .line 478
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 479
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    .line 480
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 481
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    .line 483
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnKeyguard(Z)V

    if-nez v1, :cond_6

    .line 495
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v9, "op_always_expanded"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 497
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAlwaysExpandNonGroupedNotification:Z

    if-nez v8, :cond_5

    if-nez v0, :cond_4

    if-nez v7, :cond_4

    if-nez v7, :cond_4

    .line 499
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isLowPriority()Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_5

    :cond_4
    move v8, v2

    goto :goto_6

    :cond_5
    :goto_5
    move v8, v3

    .line 497
    :goto_6
    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSystemExpanded(Z)V

    .line 504
    :cond_6
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    .line 505
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 506
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    .line 505
    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 506
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v9

    if-nez v9, :cond_7

    move v9, v3

    goto :goto_7

    :cond_7
    move v9, v2

    .line 507
    :goto_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v10, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 510
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 511
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 512
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    .line 511
    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 513
    iget-object v12, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v12, v11}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v11

    if-eqz v11, :cond_8

    move v10, v3

    :cond_8
    const/16 v11, 0x8

    if-nez v9, :cond_d

    .line 518
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 519
    invoke-interface {v9, v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(I)Z

    move-result v8

    if-nez v8, :cond_d

    if-eqz v1, :cond_9

    if-nez v10, :cond_9

    goto :goto_9

    .line 523
    :cond_9
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-ne v8, v11, :cond_a

    move v8, v3

    goto :goto_8

    :cond_a
    move v8, v2

    :goto_8
    if-eqz v8, :cond_b

    .line 525
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_b
    if-nez v7, :cond_e

    .line 527
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_e

    if-eqz v8, :cond_c

    .line 530
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    xor-int/lit8 v9, v10, 0x1

    invoke-interface {v7, v8, v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->generateAddAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 521
    :cond_d
    :goto_9
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 536
    :cond_e
    :goto_a
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 538
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v7

    .line 539
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_b
    if-ltz v8, :cond_f

    .line 541
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_b

    .line 545
    :cond_f
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 546
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getLastAudiblyAlertedMs()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setLastAudiblyAlertedMs(J)V

    goto/16 :goto_4

    :cond_10
    const-string v0, "NotificationPresenter#onUpdateRowStates"

    .line 549
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 550
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationPresenter;->onUpdateRowStates()V

    .line 551
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 552
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public onDynamicPrivacyChanged()V
    .locals 2

    .line 557
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationViewHierarchyManager"

    const-string v1, "onDynamicPrivacyChanged made a re-entrant call"

    .line 558
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsHandleDynamicPrivacyChangeScheduled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 564
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsHandleDynamicPrivacyChangeScheduled:Z

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationViewHierarchyManager$VZHW9NMJkqBLUXo3lkuiamxmEXo;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationViewHierarchyManager$VZHW9NMJkqBLUXo3lkuiamxmEXo;-><init>(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 151
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 152
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->addListener(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;)V

    return-void
.end method

.method public shouldHideSensitive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 7

    .line 590
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    .line 591
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v1

    .line 592
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isSecure()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->isLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 594
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 596
    invoke-interface {v5, p2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v3

    :goto_2
    if-eqz v5, :cond_4

    .line 597
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eq p2, v0, :cond_3

    const/4 v6, -0x1

    if-eq p2, v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 599
    invoke-interface {v6, p2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsSeparateWorkChallenge(I)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    move v5, v4

    .line 602
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move p1, v4

    goto :goto_4

    :cond_6
    :goto_3
    move p1, v3

    :goto_4
    if-eqz v5, :cond_7

    if-eqz p1, :cond_7

    move p1, v3

    goto :goto_5

    :cond_7
    move p1, v4

    :goto_5
    if-eqz v1, :cond_8

    .line 605
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 606
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result p0

    if-nez p0, :cond_8

    move p0, v3

    goto :goto_6

    :cond_8
    move p0, v4

    :goto_6
    if-nez p1, :cond_a

    if-nez p0, :cond_a

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    move v3, v4

    :cond_a
    :goto_7
    return v3
.end method

.method public updateNotificationViews()V
    .locals 12

    .line 160
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->beginUpdate()V

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/OpNotificationViewHierarchyManager;->setAnyNotificationLocked(Z)V

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getVisibleNotifications()Ljava/util/List;

    move-result-object v1

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_18

    .line 173
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 174
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v7

    if-nez v7, :cond_17

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v7

    if-nez v7, :cond_17

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    .line 175
    invoke-virtual {v7, v6}, Lcom/android/systemui/bubbles/BubbleController;->isBubbleNotificationSuppressedFromShade(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    if-nez v7, :cond_17

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mFgsSectionController:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    .line 176
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->hasEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_f

    .line 182
    :cond_0
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    .line 187
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v8

    .line 188
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v9, v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 189
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 190
    invoke-interface {v10, v7}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    move v10, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v10, v5

    :goto_2
    if-eqz v10, :cond_4

    .line 191
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    move-result v11

    if-eqz v11, :cond_4

    if-eq v7, v8, :cond_3

    const/4 v11, -0x1

    if-eq v7, v11, :cond_3

    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 193
    invoke-interface {v11, v7}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsSeparateWorkChallenge(I)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    move v10, v0

    .line 203
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->isLocked(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v5

    goto :goto_3

    :cond_5
    move v7, v0

    .line 204
    :goto_3
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v11, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v11

    if-nez v11, :cond_7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    move v11, v0

    goto :goto_5

    :cond_7
    :goto_4
    move v11, v5

    :goto_5
    if-nez v10, :cond_8

    if-eqz v7, :cond_9

    :cond_8
    if-eqz v11, :cond_9

    move v10, v5

    goto :goto_6

    :cond_9
    move v10, v0

    :goto_6
    if-eqz v9, :cond_a

    .line 209
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 210
    invoke-interface {v9, v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v8

    if-nez v8, :cond_a

    move v8, v5

    goto :goto_7

    :cond_a
    move v8, v0

    :goto_7
    if-nez v8, :cond_c

    if-eqz v7, :cond_b

    goto :goto_8

    :cond_b
    move v8, v0

    goto :goto_9

    :cond_c
    :goto_8
    move v8, v5

    .line 220
    :goto_9
    invoke-virtual {v6, v10, v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setSensitive(ZZ)V

    .line 222
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    if-nez v11, :cond_e

    if-eqz v7, :cond_d

    goto :goto_a

    :cond_d
    move v9, v0

    goto :goto_b

    :cond_e
    :goto_a
    move v9, v5

    :goto_b
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    .line 223
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentHidden(Z)V

    if-eqz v7, :cond_f

    .line 226
    invoke-virtual {p0, v5}, Lcom/oneplus/systemui/statusbar/OpNotificationViewHierarchyManager;->setAnyNotificationLocked(Z)V

    .line 230
    :cond_f
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLowPriorityInflationHelper:Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;->recheckLowPriorityViewAndInflate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 231
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    .line 233
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 234
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->areGroupChangesAllowed()Z

    move-result v8

    if-nez v8, :cond_11

    .line 235
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasFinishedInitialization()Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_c

    :cond_10
    move v5, v0

    .line 237
    :cond_11
    :goto_c
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v8

    if-nez v5, :cond_13

    .line 240
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isChildInGroup()Z

    move-result v5

    if-eqz v7, :cond_12

    if-nez v5, :cond_12

    .line 243
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v7, v9, v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addGroupChangesAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;Z)V

    :goto_d
    move v7, v5

    goto :goto_e

    :cond_12
    if-nez v7, :cond_13

    if-eqz v5, :cond_13

    .line 247
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isLogicalGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 249
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v8

    .line 250
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v7, v9, v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addGroupChangesAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;Z)V

    goto :goto_d

    :cond_13
    :goto_e
    if-eqz v7, :cond_15

    .line 257
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_14

    .line 259
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 260
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_14
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 269
    :cond_15
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 272
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_16
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 279
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    .line 280
    :goto_10
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1a

    .line 281
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 282
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    instance-of v6, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_19

    .line 283
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 287
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v6

    if-nez v6, :cond_19

    .line 288
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 293
    :cond_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 294
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingOrActiveNotif(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 297
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setChildTransferInProgress(Z)V

    .line 299
    :cond_1b
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 300
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeAllChildren()V

    .line 302
    :cond_1c
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->removeContainerView(Landroid/view/View;)V

    .line 303
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setChildTransferInProgress(Z)V

    goto :goto_11

    .line 306
    :cond_1d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->removeNotificationChildren()V

    move v1, v0

    .line 308
    :goto_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_20

    .line 309
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 310
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1e

    .line 311
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    .line 312
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->addContainerView(Landroid/view/View;)V

    goto :goto_13

    .line 313
    :cond_1e
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->containsView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 316
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    :cond_1f
    :goto_13
    add-int/2addr v1, v5

    goto :goto_12

    .line 321
    :cond_20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->addNotificationChildrenAndSort()V

    move v1, v0

    move v3, v1

    .line 327
    :goto_14
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v4

    if-ge v1, v4, :cond_25

    .line 328
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 329
    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v5, :cond_21

    goto :goto_16

    .line 333
    :cond_21
    move-object v5, v4

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_16

    .line 338
    :cond_22
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eq v4, v5, :cond_24

    .line 342
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 343
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v5, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    goto :goto_15

    .line 345
    :cond_23
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;Z)V

    :cond_24
    :goto_15
    add-int/lit8 v3, v3, 0x1

    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 353
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mDynamicChildBindController:Lcom/android/systemui/statusbar/notification/DynamicChildBindController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/DynamicChildBindController;->updateContentViews(Ljava/util/Map;)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->onReorderingFinished()V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStatesInternal()V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->onNotificationViewUpdateFinished()V

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->endUpdate()V

    return-void
.end method

.method public updateRowStates()V
    .locals 0

    .line 452
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 453
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->beginUpdate()V

    .line 454
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStatesInternal()V

    .line 455
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->endUpdate()V

    return-void
.end method
