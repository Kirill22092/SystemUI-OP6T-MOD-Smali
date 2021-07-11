.class public Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
.super Ljava/lang/Object;
.source "VisualStabilityManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
    }
.end annotation


# instance fields
.field private mAddedChildren:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedReorderViews:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupChangedAllowed:Z

.field private final mGroupChangesAllowedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsTemporaryReorderingAllowed:Z

.field private mLowPriorityReorderingViews:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnTemporaryReorderingExpired:Ljava/lang/Runnable;

.field private mPanelExpanded:Z

.field private final mPersistentGroupCallbacks:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentReorderingCallbacks:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mPulsing:Z

.field private mReorderingAllowed:Z

.field private final mReorderingAllowedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mTemporaryReorderingStart:J

.field private mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/os/Handler;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowedCallbacks:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPersistentReorderingCallbacks:Landroidx/collection/ArraySet;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mGroupChangesAllowedCallbacks:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPersistentGroupCallbacks:Landroidx/collection/ArraySet;

    .line 58
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroidx/collection/ArraySet;

    .line 59
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroidx/collection/ArraySet;

    .line 60
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroidx/collection/ArraySet;

    .line 247
    new-instance v0, Lcom/android/systemui/statusbar/notification/-$$Lambda$VisualStabilityManager$6rf_6W4K3PrMdhwP_O1LDBveJ6k;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$VisualStabilityManager$6rf_6W4K3PrMdhwP_O1LDBveJ6k;-><init>(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mOnTemporaryReorderingExpired:Ljava/lang/Runnable;

    .line 70
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance p2, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$1;-><init>(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)Landroidx/collection/ArraySet;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroidx/collection/ArraySet;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mIsTemporaryReorderingAllowed:Z

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateAllowedStates()V

    return-void
.end method

.method private notifyChangeAllowed(Ljava/util/ArrayList;Landroidx/collection/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ">;",
            "Landroidx/collection/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 167
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 168
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;

    .line 169
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;->onChangeAllowed()V

    .line 170
    invoke-virtual {p2, v0}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, -0x1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAllowedStates()V
    .locals 4

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mScreenOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPanelExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mIsTemporaryReorderingAllowed:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPulsing:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 152
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 153
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    if-eqz v3, :cond_3

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowedCallbacks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPersistentReorderingCallbacks:Landroidx/collection/ArraySet;

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyChangeAllowed(Ljava/util/ArrayList;Landroidx/collection/ArraySet;)V

    .line 157
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mScreenOn:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPanelExpanded:Z

    if-nez v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPulsing:Z

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    .line 158
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mGroupChangedAllowed:Z

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    .line 159
    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mGroupChangedAllowed:Z

    if-eqz v1, :cond_7

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mGroupChangesAllowedCallbacks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPersistentGroupCallbacks:Landroidx/collection/ArraySet;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyChangeAllowed(Ljava/util/ArrayList;Landroidx/collection/ArraySet;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public addGroupChangesAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 114
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPersistentGroupCallbacks:Landroidx/collection/ArraySet;

    invoke-virtual {p2, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mGroupChangesAllowedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 119
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mGroupChangesAllowedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 97
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPersistentReorderingCallbacks:Landroidx/collection/ArraySet;

    invoke-virtual {p2, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 102
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public areGroupChangesAllowed()Z
    .locals 0

    .line 188
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mGroupChangedAllowed:Z

    return p0
.end method

.method public canReorderNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 3

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroidx/collection/ArraySet;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

    .line 207
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;->isInVisibleLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "VisualStabilityManager state:"

    .line 262
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mIsTemporaryReorderingAllowed="

    .line 263
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mIsTemporaryReorderingAllowed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mTemporaryReorderingStart="

    .line 264
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mTemporaryReorderingStart:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string p1, "    Temporary reordering window has been open for "

    .line 267
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mIsTemporaryReorderingAllowed:Z

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mTemporaryReorderingStart:J

    goto :goto_0

    :cond_0
    move-wide p0, v0

    :goto_0
    sub-long/2addr v0, p0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p0, "ms"

    .line 269
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public isReorderingAllowed()Z
    .locals 0

    .line 181
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    return p0
.end method

.method public synthetic lambda$new$0$VisualStabilityManager()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->lambda$new$0()V

    return-void
.end method

.method public notifyViewAddition(Landroid/view/View;)V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroidx/collection/ArraySet;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onReorderingFinished()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 221
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroidx/collection/ArraySet;

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V

    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPanelExpanded:Z

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateAllowedStates()V

    return-void
.end method

.method public setPulsing(Z)V
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPulsing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 145
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPulsing:Z

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateAllowedStates()V

    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mScreenOn:Z

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateAllowedStates()V

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V
    .locals 0

    return-void
.end method

.method public setVisibilityLocationProvider(Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

    return-void
.end method

.method public temporarilyAllowReordering()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mOnTemporaryReorderingExpired:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mOnTemporaryReorderingExpired:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mIsTemporaryReorderingAllowed:Z

    if-nez v0, :cond_0

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mTemporaryReorderingStart:J

    :cond_0
    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mIsTemporaryReorderingAllowed:Z

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateAllowedStates()V

    return-void
.end method
