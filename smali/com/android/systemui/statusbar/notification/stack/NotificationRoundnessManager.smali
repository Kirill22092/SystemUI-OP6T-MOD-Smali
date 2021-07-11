.class public Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;
.super Ljava/lang/Object;
.source "NotificationRoundnessManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field private mAnimatedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mAppearFraction:F

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mExpanded:Z

.field private final mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private final mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private mRoundingChangedCallback:Ljava/lang/Runnable;

.field private final mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private final mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->getNumberOfBuckets()I

    move-result p2

    .line 55
    new-array v0, p2, [Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 56
    new-array v0, p2, [Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 57
    new-array v0, p2, [Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 58
    new-array p2, p2, [Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-void
.end method

.method private getRoundness(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)F
    .locals 3

    .line 129
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mExpanded:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 132
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    return v1

    .line 135
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    return v1

    .line 138
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-ne p1, p2, :cond_4

    .line 141
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAppearFraction:F

    sub-float/2addr v1, p0

    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result p0

    return p0

    .line 143
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private handleAddedNewViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z
    .locals 9

    .line 210
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v4, p1, v2

    if-eqz p3, :cond_0

    .line 212
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v4

    :goto_1
    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 215
    array-length v6, p2

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, p2, v7

    if-ne v8, v4, :cond_1

    move v6, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_3
    if-nez v6, :cond_4

    .line 224
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    goto :goto_4

    :cond_3
    move v3, v1

    .line 223
    :goto_4
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move v3, v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method

.method private handleRemovedOldViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z
    .locals 9

    .line 177
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_8

    aget-object v4, p2, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    .line 181
    array-length v6, p1

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, p1, v7

    if-eqz p3, :cond_0

    .line 183
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v8

    goto :goto_2

    .line 184
    :cond_0
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v8

    :goto_2
    if-ne v8, v4, :cond_3

    .line 187
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isFirstInSection()Z

    move-result v6

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result v7

    if-ne v6, v7, :cond_2

    .line 189
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isLastInSection()Z

    move-result v6

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result v7

    if-eq v6, v7, :cond_1

    goto :goto_3

    :cond_1
    move v7, v1

    move v6, v5

    goto :goto_5

    :cond_2
    :goto_3
    move v6, v5

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_4
    move v7, v6

    :goto_5
    if-eqz v6, :cond_5

    if-eqz v7, :cond_7

    .line 198
    :cond_5
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_6

    .line 199
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v3

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    :cond_6
    move v3, v5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return v3
.end method

.method private isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 104
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 105
    aget-object v4, v3, v1

    if-ne p1, v4, :cond_2

    if-nez p2, :cond_0

    if-lez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 108
    :cond_2
    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private isLastInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_4

    .line 118
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    aget-object v5, v4, v0

    if-ne p1, v5, :cond_2

    if-nez p2, :cond_1

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :cond_1
    :goto_1
    return v1

    .line 121
    :cond_2
    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method private updateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z
    .locals 4

    const/4 v0, 0x1

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->getRoundness(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)F

    move-result v1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->getRoundness(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)F

    move-result v3

    .line 93
    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTopRoundness(FZ)Z

    move-result v1

    .line 94
    invoke-virtual {p1, v3, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBottomRoundness(FZ)Z

    move-result p2

    .line 95
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result v3

    .line 96
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result p0

    .line 97
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setFirstInSection(Z)V

    .line 98
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setLastInSection(Z)V

    if-nez v3, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 64
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 79
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 69
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method

.method public onHeadsupAnimatingAwayChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 0

    const/4 p2, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method

.method public setAnimatedChildren(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;)V"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    return-void
.end method

.method public setExpanded(FF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 150
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mExpanded:Z

    .line 151
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAppearFraction:F

    .line 152
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_1

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_1
    return-void
.end method

.method public setOnRoundingChangedCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 241
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 243
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_0
    return-void
.end method

.method public updateRoundedChildren([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 159
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    aget-object v4, v3, v1

    aput-object v4, v2, v1

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    aget-object v4, v4, v1

    aput-object v4, v2, v1

    .line 162
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v2

    aput-object v2, v3, v1

    .line 163
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleRemovedOldViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result v1

    or-int/2addr v1, v0

    .line 166
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0, p1, v3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleRemovedOldViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result v3

    or-int/2addr v1, v3

    .line 167
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleAddedNewViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result v2

    or-int/2addr v1, v2

    .line 168
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0, p1, v2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleAddedNewViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result p1

    or-int/2addr p1, v1

    if-eqz p1, :cond_1

    .line 170
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
