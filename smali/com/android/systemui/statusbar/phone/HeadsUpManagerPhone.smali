.class public Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
.super Lcom/android/systemui/statusbar/policy/HeadsUpManager;
.source "HeadsUpManagerPhone.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$OnHeadsUpPhoneListenerChange;,
        Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;,
        Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    }
.end annotation


# instance fields
.field private mAnimationStateHandler:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;

.field private final mAutoHeadsUpNotificationDecay:I

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mEntriesToRemoveAfterExpand:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntriesToRemoveWhenReorderingAllowed:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;",
            ">;"
        }
    .end annotation
.end field

.field final mExtensionTime:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpGoingAway:Z

.field private mHeadsUpInset:I

.field private final mHeadsUpPhoneListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$OnHeadsUpPhoneListenerChange;",
            ">;"
        }
    .end annotation
.end field

.field private mIsExpanded:Z

.field private mKeysToRemoveWhenLeavingKeyguard:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReleaseOnExpandFinish:Z

.field private mStatusBarState:I

.field private final mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mSwipedOutKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchableRegion:Landroid/graphics/Region;

.field private mTrackingHeadsUp:Z

.field private mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 1

    .line 105
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpPhoneListeners:Ljava/util/List;

    .line 65
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mSwipedOutKeys:Ljava/util/HashSet;

    .line 66
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    .line 67
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mKeysToRemoveWhenLeavingKeyguard:Ljava/util/HashSet;

    .line 68
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveWhenReorderingAllowed:Landroidx/collection/ArraySet;

    .line 77
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchableRegion:Landroid/graphics/Region;

    .line 79
    new-instance p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntryPool:Landroid/util/Pools$Pool;

    .line 558
    new-instance p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$3;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 106
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 107
    sget v0, Lcom/android/systemui/R$integer;->ambient_notification_extension_time:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mExtensionTime:I

    .line 108
    sget v0, Lcom/android/systemui/R$integer;->auto_heads_up_notification_decay:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mAutoHeadsUpNotificationDecay:I

    .line 110
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 111
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 112
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->updateResources()V

    .line 115
    new-instance p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$2;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    invoke-interface {p5, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->updateResources()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeAlertEntry(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeAlertEntry(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroid/util/ArrayMap;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeAlertEntry(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroid/util/ArrayMap;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroidx/collection/ArraySet;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveWhenReorderingAllowed:Landroidx/collection/ArraySet;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mKeysToRemoveWhenLeavingKeyguard:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mAutoHeadsUpNotificationDecay:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAutoDismissNotificationDecay:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    return p0
.end method

.method private getHeadsUpEntryPhone(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    return-object p0
.end method

.method private getTopHeadsUpEntryPhone()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    .locals 0

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopHeadsUpEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    return-object p0
.end method

.method private updateResources()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050249

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/systemui/R$dimen;->heads_up_status_bar_padding:I

    .line 140
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpInset:I

    return-void
.end method


# virtual methods
.method addHeadsUpPhoneListener(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$OnHeadsUpPhoneListenerChange;)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpPhoneListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSwipedOutNotification(Ljava/lang/String;)V
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected canRemoveImmediately(Ljava/lang/String;)Z
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 402
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return v1

    .line 406
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getHeadsUpEntryPhone(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object v0

    .line 407
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopHeadsUpEntryPhone()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object v2

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_2

    .line 409
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->canRemoveImmediately(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method protected bridge synthetic createAlertEntry()Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->createAlertEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object p0

    return-object p0
.end method

.method protected createAlertEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntryPool:Landroid/util/Pools$Pool;

    invoke-interface {p0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "HeadsUpManagerPhone state:"

    .line 324
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 378
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p1, "  mBarState="

    .line 379
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    iget p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  mTouchableRegion="

    .line 381
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public extendHeadsUp()V
    .locals 0

    .line 294
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopHeadsUpEntryPhone()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 298
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->access$200(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;)V

    return-void
.end method

.method getTouchableRegion()Landroid/graphics/Region;
    .locals 6

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 168
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    .line 173
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 176
    aget v3, v1, v2

    .line 177
    aget v1, v1, v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 178
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 179
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchableRegion:Landroid/graphics/Region;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpInset:I

    add-int/2addr v5, v0

    invoke-virtual {v4, v3, v2, v1, v5}, Landroid/graphics/Region;->set(IIII)Z

    .line 180
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchableRegion:Landroid/graphics/Region;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isEntryAutoHeadsUpped(Ljava/lang/String;)Z
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getHeadsUpEntryPhone(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 239
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->access$100(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;)Z

    move-result p0

    return p0
.end method

.method isHeadsUpGoingAway()Z
    .locals 0

    .line 256
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpGoingAway:Z

    return p0
.end method

.method public isTrackingHeadsUp()Z
    .locals 0

    .line 306
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    return p0
.end method

.method protected onAlertEntryRemoved(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mKeysToRemoveWhenLeavingKeyguard:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 363
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->onAlertEntryRemoved(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)V

    .line 364
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntryPool:Landroid/util/Pools$Pool;

    check-cast p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    invoke-interface {p0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public onChangeAllowed()V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mAnimationStateHandler:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;->setHeadsUpGoingAwayAnimationsAllowed(Z)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveWhenReorderingAllowed:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 343
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeAlertEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveWhenReorderingAllowed:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 349
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mAnimationStateHandler:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;->setHeadsUpGoingAwayAnimationsAllowed(Z)V

    return-void
.end method

.method public onExpandingFinished()V
    .locals 3

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mReleaseOnExpandFinish:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mReleaseOnExpandFinish:Z

    goto :goto_1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 202
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeAlertEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public setAnimationStateHandler(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mAnimationStateHandler:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;

    return-void
.end method

.method setHeadsUpGoingAway(Z)V
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpGoingAway:Z

    if-eq p1, v0, :cond_0

    .line 248
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpGoingAway:Z

    .line 249
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpPhoneListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$OnHeadsUpPhoneListenerChange;

    .line 250
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$OnHeadsUpPhoneListenerChange;->onHeadsUpGoingAwayStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setIsPanelExpanded(Z)V
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mIsExpanded:Z

    if-eq p1, v0, :cond_0

    .line 226
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mIsExpanded:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 228
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpGoingAway:Z

    :cond_0
    return-void
.end method

.method public setMenuShown(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 1

    .line 283
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object p0

    .line 284
    instance-of v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->setMenuShownPinned(Z)V

    :cond_0
    return-void
.end method

.method public setRemoteInputActive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 267
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getHeadsUpEntryPhone(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 268
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-eq p1, p2, :cond_1

    .line 269
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-eqz p2, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->removeAutoRemovalCallbacks()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTrackingHeadsUp(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    return-void
.end method

.method setup(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    return-void
.end method

.method public shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    .line 369
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mIsExpanded:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 370
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    iget v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    :cond_2
    if-nez v0, :cond_3

    .line 373
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method shouldSwallowClick(Ljava/lang/String;)Z
    .locals 2

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mClock:Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide p0, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mPostTime:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public snooze()V
    .locals 1

    .line 311
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->snooze()V

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mReleaseOnExpandFinish:Z

    return-void
.end method
