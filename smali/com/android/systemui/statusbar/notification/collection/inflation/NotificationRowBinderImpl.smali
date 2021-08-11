.class public Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;
.super Ljava/lang/Object;
.source "NotificationRowBinderImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;
    }
.end annotation


# instance fields
.field private mBindRowCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;

.field private final mContext:Landroid/content/Context;

.field private final mExpandableNotificationRowComponentBuilder:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;

.field private final mIconManager:Lcom/android/systemui/statusbar/notification/icon/IconManager;

.field private mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field private final mLowPriorityInflationHelper:Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;

.field private final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

.field private final mNotifBindPipeline:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

.field private mNotificationClicker:Lcom/android/systemui/statusbar/notification/NotificationClicker;

.field private final mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

.field private final mRowInflaterTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/NotificationMessagingUtil;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;Lcom/android/systemui/statusbar/notification/icon/IconManager;Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/util/NotificationMessagingUtil;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;",
            "Lcom/android/systemui/statusbar/notification/icon/IconManager;",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mNotifBindPipeline:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mRowInflaterTaskProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mExpandableNotificationRowComponentBuilder:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mIconManager:Lcom/android/systemui/statusbar/notification/icon/IconManager;

    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mLowPriorityInflationHelper:Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;

    return-void
.end method

.method private bindRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->bindRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->bindRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOnActivatedListener(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mNotifBindPipeline:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->manageRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mBindRowCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;

    invoke-interface {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;->onBindRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private inflateContentViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V
    .locals 8

    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/NotificationMessagingUtil;->isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mLowPriorityInflationHelper:Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;->shouldUseLowPriorityView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/notification/row/BindStage;->getStageParams(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->setUseIncreasedCollapsedHeight(Z)V

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->setUseLowPriority(Z)V

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isSecure()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const-class v4, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->isLocked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v5

    :goto_2
    if-nez v0, :cond_5

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v5, v6

    :cond_5
    :goto_3
    invoke-virtual {p2, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentHidden(Z)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->rebindAllContentViews()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/inflation/-$$Lambda$NotificationRowBinderImpl$M_8U_SW8MSCq5I74bBphTK6ZY-4;

    invoke-direct {v0, p2, v1, v2, p3}, Lcom/android/systemui/statusbar/notification/collection/inflation/-$$Lambda$NotificationRowBinderImpl$M_8U_SW8MSCq5I74bBphTK6ZY-4;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/BindRequester;->requestRebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)Landroidx/core/os/CancellationSignal;

    return-void
.end method

.method static synthetic lambda$inflateContentViews$1(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUsesIncreasedCollapsedHeight(Z)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsLowPriority(Z)V

    if-eqz p3, :cond_0

    invoke-interface {p3, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$inflateViews$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mExpandableNotificationRowComponentBuilder:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;

    invoke-interface {v0, p4}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;->expandableNotificationRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;->notificationEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;->onDismissRunnable(Ljava/lang/Runnable;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;->rowContentBindStage(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;->onExpandClickListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;->build()Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent;->getExpandableNotificationRowController()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->init()V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setRowController(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)V

    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->bindRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->updateRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-direct {p0, p1, p4, p3}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->inflateContentViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V

    return-void
.end method

.method private updateRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    iget v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setLegacy(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mNotificationClicker:Lcom/android/systemui/statusbar/notification/NotificationClicker;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationClicker;->register(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method


# virtual methods
.method public inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getViewParentForNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result v1

    const-string v2, "NotificationViewManager"

    if-eqz v1, :cond_1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "entry Exists"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mIconManager:Lcom/android/systemui/statusbar/notification/icon/IconManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->updateIcons(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->reset()V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->updateRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->inflateContentViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRowController()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->setOnDismissRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRowController()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->setLongPressListenerIfNeeded()V

    goto :goto_0

    :cond_1
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    const-string v1, "entry none-Exists"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mIconManager:Lcom/android/systemui/statusbar/notification/icon/IconManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->createIcons(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mRowInflaterTaskProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/inflation/-$$Lambda$NotificationRowBinderImpl$SFe64hfrb5m8XyXzSK440usXoQw;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/inflation/-$$Lambda$NotificationRowBinderImpl$SFe64hfrb5m8XyXzSK440usXoQw;-><init>(Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowInflationFinishedListener;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$inflateViews$0$NotificationRowBinderImpl(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->lambda$inflateViews$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public onNotificationRankingUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Integer;Lcom/android/systemui/statusbar/NotificationUiAdjustment;Lcom/android/systemui/statusbar/NotificationUiAdjustment;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V
    .locals 0

    invoke-static {p3, p4}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->needReinflate(Lcom/android/systemui/statusbar/NotificationUiAdjustment;Lcom/android/systemui/statusbar/NotificationUiAdjustment;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->reset()V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->updateRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-direct {p0, p1, p2, p5}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->inflateContentViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p0, p2, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onNotificationRankingUpdated()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNotificationClicker(Lcom/android/systemui/statusbar/notification/NotificationClicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mNotificationClicker:Lcom/android/systemui/statusbar/notification/NotificationClicker;

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mBindRowCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mIconManager:Lcom/android/systemui/statusbar/notification/icon/IconManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->attach()V

    return-void
.end method
