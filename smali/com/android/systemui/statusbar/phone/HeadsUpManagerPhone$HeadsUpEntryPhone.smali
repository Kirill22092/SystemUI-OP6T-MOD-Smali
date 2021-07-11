.class public Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
.super Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
.source "HeadsUpManagerPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeadsUpEntryPhone"
.end annotation


# instance fields
.field private extended:Z

.field private mIsAutoHeadsUp:Z

.field private mMenuShownPinned:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;)Z
    .locals 0

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->isAutoHeadsUp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;)V
    .locals 0

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extendPulse()V

    return-void
.end method

.method private extendPulse()V
    .locals 1

    .line 506
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extended:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extended:Z

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Z)V

    :cond_0
    return-void
.end method

.method private getDecayDuration()I
    .locals 1

    .line 531
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->isAutoHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$600(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->getRecommendedHeadsUpTimeoutMs(I)I

    move-result p0

    return p0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$700(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->getRecommendedHeadsUpTimeoutMs(I)I

    move-result p0

    return p0
.end method

.method private isAutoHeadsUp()Z
    .locals 0

    .line 539
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mIsAutoHeadsUp:Z

    return p0
.end method

.method private synthetic lambda$setEntry$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$800(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showingPulsing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$400(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroidx/collection/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$800(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;Z)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$900(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$300(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 446
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mIsAutoHeadsUp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$1000(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 447
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$500(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$1100(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected calculateFinishTime()J
    .locals 4

    .line 527
    iget-wide v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mPostTime:J

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->getDecayDuration()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extended:Z

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mExtensionTime:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I
    .locals 2

    .line 514
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 515
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->isAutoHeadsUp()Z

    move-result v1

    .line 516
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->isAutoHeadsUp()Z

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 522
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 415
    check-cast p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I

    move-result p0

    return p0
.end method

.method public isSticky()Z
    .locals 1

    .line 432
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->isSticky()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mMenuShownPinned:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public synthetic lambda$setEntry$0$HeadsUpManagerPhone$HeadsUpEntryPhone(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->lambda$setEntry$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 499
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->reset()V

    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mMenuShownPinned:Z

    .line 501
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extended:Z

    .line 502
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mIsAutoHeadsUp:Z

    return-void
.end method

.method public setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 436
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpManagerPhone$HeadsUpEntryPhone$adyrhF30JE9Yr0JaVKYkiAV0Clw;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpManagerPhone$HeadsUpEntryPhone$adyrhF30JE9Yr0JaVKYkiAV0Clw;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 453
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 472
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 476
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    if-eqz p1, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->removeAutoRemovalCallbacks()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 480
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Z)V

    :goto_0
    return-void
.end method

.method public setMenuShownPinned(Z)V
    .locals 1

    .line 485
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mMenuShownPinned:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 489
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mMenuShownPinned:Z

    if-eqz p1, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->removeAutoRemovalCallbacks()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 493
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Z)V

    :goto_0
    return-void
.end method

.method public updateEntry(Z)V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isAutoHeadsUp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mIsAutoHeadsUp:Z

    .line 459
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->updateEntry(Z)V

    .line 461
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$300(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 462
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$300(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 464
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$400(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroidx/collection/ArraySet;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v0}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 465
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$400(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroidx/collection/ArraySet;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v0}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 467
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$500(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
