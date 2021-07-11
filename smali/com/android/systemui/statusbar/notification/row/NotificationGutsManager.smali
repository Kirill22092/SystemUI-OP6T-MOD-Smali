.class public Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
.super Ljava/lang/Object;
.source "NotificationGutsManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/NotificationLifetimeExtender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mBgHandler:Landroid/os/Handler;

.field private final mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

.field private final mContext:Landroid/content/Context;

.field private final mContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field private final mHighPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

.field protected mKeyToRemoveOnGutsClosed:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

.field private final mNotificationManager:Landroid/app/INotificationManager;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

.field private mOpenRunnable:Ljava/lang/Runnable;

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mShortcutManager:Landroid/content/pm/ShortcutManager;

.field private final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ldagger/Lazy;Landroid/os/Handler;Landroid/os/Handler;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Landroid/app/INotificationManager;Landroid/content/pm/LauncherApps;Landroid/content/pm/ShortcutManager;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Lcom/android/systemui/settings/CurrentUserContextTracker;Ljavax/inject/Provider;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/Handler;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;",
            "Landroid/app/INotificationManager;",
            "Landroid/content/pm/LauncherApps;",
            "Landroid/content/pm/ShortcutManager;",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            "Lcom/android/systemui/settings/CurrentUserContextTracker;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;",
            ">;",
            "Lcom/android/systemui/bubbles/BubbleController;",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 99
    const-class v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 100
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 101
    const-class v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 102
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 103
    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 104
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v1, p1

    .line 145
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    move-object v1, p2

    .line 146
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object v1, p3

    .line 147
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBarLazy:Ldagger/Lazy;

    move-object v1, p4

    .line 148
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMainHandler:Landroid/os/Handler;

    move-object v1, p5

    .line 149
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mBgHandler:Landroid/os/Handler;

    move-object v1, p6

    .line 150
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v1, p7

    .line 151
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mHighPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    move-object v1, p8

    .line 152
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationManager:Landroid/app/INotificationManager;

    move-object v1, p9

    .line 153
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    move-object v1, p10

    .line 154
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    move-object v1, p12

    .line 155
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    move-object v1, p13

    .line 156
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mBuilderProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 157
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    move-object/from16 v1, p14

    .line 158
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    move-object/from16 v1, p15

    .line 159
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object p1
.end method

.method private bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 1

    .line 249
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->ensureGutsInflated()V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result p0

    return p0
.end method

.method private initializeAppOpsInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;)V
    .locals 8

    .line 330
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    .line 331
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 332
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 333
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 334
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 333
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 336
    new-instance v4, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$wyMAwZ08iUSa7KG3DScd2mF0ZVk;

    invoke-direct {v4, p0, v5, v0, p1}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$wyMAwZ08iUSa7KG3DScd2mF0ZVk;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 345
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 347
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    move-object v2, p2

    .line 346
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->bindGuts(Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;Landroid/service/notification/StatusBarNotification;Lcom/android/internal/logging/UiEventLogger;Landroid/util/ArraySet;)V

    :cond_0
    return-void
.end method

.method private initializeSnoozeView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;)V
    .locals 3

    .line 310
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    .line 311
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 313
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V

    .line 314
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 315
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSnoozeCriteria()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setSnoozeOptions(Ljava/util/List;)V

    .line 316
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$xtHxMW6jrIgJGugFgxSSg6aT080;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$xtHxMW6jrIgJGugFgxSSg6aT080;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;)V

    return-void
.end method

.method private synthetic lambda$bindGuts$0(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 2

    .line 261
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onGutsClosed()V

    .line 262
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->willBeRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 264
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 263
    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    const/4 v0, 0x0

    if-ne p1, p3, :cond_1

    .line 267
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 268
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 270
    :cond_1
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 271
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 272
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    .line 273
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    if-eqz p0, :cond_2

    .line 274
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;->onSafeToRemove(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$initializeAppOpsInfo$2(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V
    .locals 3

    .line 338
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationAppOpsEvent;->NOTIFICATION_APP_OPS_SETTINGS_CLICK:Lcom/android/systemui/statusbar/notification/row/NotificationAppOpsEvent;

    .line 340
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p1

    .line 338
    invoke-interface {p4, v0, v1, v2, p1}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 341
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 p4, 0x542

    invoke-virtual {p1, p4}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 342
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 343
    invoke-virtual {p0, p5, p6, p7, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppOpsSettingsActivity(Ljava/lang/String;ILandroid/util/ArraySet;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private synthetic lambda$initializeConversationNotificationInfo$8(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 478
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startConversationSettingsActivity(ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private synthetic lambda$initializeConversationNotificationInfo$9(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V
    .locals 1

    .line 484
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0xcd

    invoke-virtual {p5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 485
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 486
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;->onSettingsClick(Ljava/lang/String;)V

    .line 487
    invoke-direct {p0, p3, p7, p6, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private synthetic lambda$initializeNotificationInfo$3(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/content/Intent;)V
    .locals 1

    .line 370
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0xce

    invoke-virtual {p4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 371
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 372
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    invoke-interface {p0, p5, p1, p3}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private synthetic lambda$initializeNotificationInfo$4(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V
    .locals 1

    .line 379
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0xcd

    invoke-virtual {p5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 380
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 381
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;->onSettingsClick(Ljava/lang/String;)V

    .line 382
    invoke-direct {p0, p3, p7, p6, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private synthetic lambda$initializePartialConversationNotificationInfo$5(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V
    .locals 1

    .line 424
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0xcd

    invoke-virtual {p5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 425
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 426
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;->onSettingsClick(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0, p3, p7, p6, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private synthetic lambda$initializeSnoozeView$1(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method

.method private synthetic lambda$openGuts$10(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 0

    .line 578
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->openGutsInternal(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    return-void
.end method

.method private synthetic lambda$openGuts$11(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 8

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$PjWrLLW0p5M-pvIfRIh3E86B4Vc;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$PjWrLLW0p5M-pvIfRIh3E86B4Vc;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startAppDetailsSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    const/4 v2, 0x0

    .line 217
    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.provider.extra.APP_PACKAGE"

    .line 218
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "app_uid"

    .line 219
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 221
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p3, ":settings:fragment_args_key"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {p0, v0, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.provider.extra.APP_PACKAGE"

    .line 189
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "app_uid"

    .line 190
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_1

    .line 193
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 194
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 200
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget-object p3, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "small_app"

    .line 201
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "small_app_package"

    .line 203
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "arg_instant_package_name"

    .line 204
    invoke-virtual {p1, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p3, ":settings:show_fragment_args"

    .line 209
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 211
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {p0, v0, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private startConversationSettingsActivity(ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CONVERSATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method


# virtual methods
.method protected bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 256
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 258
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setGutsView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 259
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$lbHSFb83h5SRmJTPUlzactX7_1Q;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$lbHSFb83h5SRmJTPUlzactX7_1Q;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setClosedListener(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;)V

    .line 279
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object p2

    .line 281
    :try_start_0
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    if-eqz v0, :cond_0

    .line 282
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->initializeSnoozeView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;)V

    goto :goto_0

    .line 283
    :cond_0
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;

    if-eqz v0, :cond_1

    .line 284
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->initializeAppOpsInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;)V

    goto :goto_0

    .line 285
    :cond_1
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    if-eqz v0, :cond_2

    .line 286
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->initializeNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    goto :goto_0

    .line 287
    :cond_2
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    if-eqz v0, :cond_3

    .line 288
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->initializeConversationNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)V

    goto :goto_0

    .line 290
    :cond_3
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;

    if-eqz v0, :cond_4

    .line 291
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->initializePartialConversationNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationGutsManager"

    const-string p2, "error binding guts"

    .line 296
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public closeAndSaveGuts(ZZZIIZ)V
    .locals 8

    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 530
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(ZZIIZ)V

    :cond_0
    if-eqz p6, :cond_1

    .line 533
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->resetExposedMenuView(ZZ)V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "NotificationGutsManager state:"

    .line 701
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mKeyToRemoveOnGutsClosed: "

    .line 702
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 703
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getExposedGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-object p0
.end method

.method initializeConversationNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)V
    .locals 26
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 453
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v2

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v14

    .line 455
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 456
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 459
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 460
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 461
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 460
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 470
    new-instance v7, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$SxOqoV1fAYXT8YXSboDhbPUKcNY;

    invoke-direct {v7, v6, v3}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$SxOqoV1fAYXT8YXSboDhbPUKcNY;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/service/notification/StatusBarNotification;)V

    .line 476
    new-instance v15, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$sCU8ga9RgRp89PSTE4vP2xOWPYM;

    move-object/from16 v5, p1

    invoke-direct {v15, v6, v3, v5}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$sCU8ga9RgRp89PSTE4vP2xOWPYM;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 481
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 482
    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object/from16 v16, v0

    goto :goto_1

    .line 483
    :cond_1
    :goto_0
    new-instance v8, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$l1uQ6jkAF-_qnuYpLc8JtAuLHmo;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v4, v12

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$l1uQ6jkAF-_qnuYpLc8JtAuLHmo;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    move-object/from16 v16, v8

    .line 490
    :goto_1
    new-instance v19, Lcom/android/settingslib/notification/ConversationIconFactory;

    move-object/from16 v18, v19

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 v2, 0x0

    .line 491
    invoke-static {v0, v2}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    move-result-object v23

    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 492
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->notification_guts_conversation_icon_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v22, v9

    invoke-direct/range {v19 .. v24}, Lcom/android/settingslib/notification/ConversationIconFactory;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Landroid/content/pm/PackageManager;Landroid/util/IconDrawableFactory;I)V

    .line 495
    iget-object v8, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    iget-object v10, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationManager:Landroid/app/INotificationManager;

    iget-object v11, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 501
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v13

    .line 503
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    move-object v1, v15

    move-object v15, v0

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    .line 507
    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserContextTracker;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v19

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v0

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 509
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v21

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mBgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    move-object/from16 v25, v0

    move-object v0, v7

    move-object/from16 v7, p2

    move-object/from16 v17, v0

    move-object/from16 v24, v1

    .line 495
    invoke-virtual/range {v7 .. v25}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->bindNotification(Landroid/content/pm/ShortcutManager;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ljava/lang/String;Landroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$BubbleMetadata;Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnSnoozeClickListener;Lcom/android/settingslib/notification/ConversationIconFactory;Landroid/content/Context;Ljavax/inject/Provider;ZLandroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$OnConversationSettingsClickListener;Lcom/android/systemui/bubbles/BubbleController;)V

    return-void
.end method

.method initializeNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V
    .locals 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v2

    .line 361
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 362
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 365
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 366
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 367
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 366
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 368
    new-instance v14, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$5sbilrrQIt_lf--8k9ZdwNLn-js;

    move-object/from16 v8, p1

    invoke-direct {v14, v6, v2, v3, v8}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$5sbilrrQIt_lf--8k9ZdwNLn-js;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 376
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 377
    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v13, v0

    goto :goto_1

    .line 378
    :cond_1
    :goto_0
    new-instance v10, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v4, v9

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    move-object v13, v10

    .line 386
    :goto_1
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationManager:Landroid/app/INotificationManager;

    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 392
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v10

    .line 393
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getUniqueChannels()Landroid/util/ArraySet;

    move-result-object v11

    .line 394
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v12

    iget-object v15, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 398
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v16

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIsNonblockable()Z

    move-result v17

    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mHighPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    .line 400
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result v18

    move-object/from16 v4, p2

    move-object v5, v7

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    .line 386
    invoke-virtual/range {v4 .. v18}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;Lcom/android/internal/logging/UiEventLogger;ZZZ)V

    return-void
.end method

.method initializePartialConversationNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;)V
    .locals 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v6, p0

    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v2

    .line 413
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 414
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 417
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 418
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 419
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 418
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 421
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 422
    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_1

    .line 423
    :cond_1
    :goto_0
    new-instance v9, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$_QQQs9zfP_ZSHrXlaEFU7rOxG50;

    move-object v0, v9

    move-object v1, p0

    move-object v4, v8

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$_QQQs9zfP_ZSHrXlaEFU7rOxG50;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    move-object v12, v9

    .line 431
    :goto_1
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationManager:Landroid/app/INotificationManager;

    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 436
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v9

    .line 437
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getUniqueChannels()Landroid/util/ArraySet;

    move-result-object v10

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v11

    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 440
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v13

    .line 441
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIsNonblockable()Z

    move-result v14

    move-object/from16 v4, p2

    move-object v5, v7

    move-object v6, v0

    move-object v7, v1

    .line 431
    invoke-virtual/range {v4 .. v14}, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;ZZ)V

    return-void
.end method

.method public synthetic lambda$bindGuts$0$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$bindGuts$0(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    return-void
.end method

.method public synthetic lambda$initializeAppOpsInfo$2$NotificationGutsManager(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$initializeAppOpsInfo$2(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V

    return-void
.end method

.method public synthetic lambda$initializeConversationNotificationInfo$8$NotificationGutsManager(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$initializeConversationNotificationInfo$8(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public synthetic lambda$initializeConversationNotificationInfo$9$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$initializeConversationNotificationInfo$9(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method public synthetic lambda$initializeNotificationInfo$3$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/content/Intent;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$initializeNotificationInfo$3(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$initializeNotificationInfo$4$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$initializeNotificationInfo$4(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method public synthetic lambda$initializePartialConversationNotificationInfo$5$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$initializePartialConversationNotificationInfo$5(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method public synthetic lambda$initializeSnoozeView$1$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$initializeSnoozeView$1(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    return-void
.end method

.method public synthetic lambda$openGuts$10$NotificationGutsManager(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$openGuts$10(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    return-void
.end method

.method public synthetic lambda$openGuts$11$NotificationGutsManager(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$openGuts$11(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 177
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->setExposedGuts(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    .line 178
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    return-void
.end method

.method public openGuts(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 9

    .line 568
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    if-eqz v0, :cond_1

    .line 570
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 571
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->needsFalsingProtection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    instance-of v1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 573
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 574
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setLeaveOpenOnKeyguardHide(Z)V

    .line 577
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$FMcYcqx6JxHHSZHrMeuI2W1DjZY;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$FMcYcqx6JxHHSZHrMeuI2W1DjZY;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 580
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return v2

    .line 590
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->openGutsInternal(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result p0

    return p0
.end method

.method openGutsInternal(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 600
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v7, 0x0

    if-nez v1, :cond_0

    return v7

    .line 604
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "NotificationGutsManager"

    const-string v1, "Trying to show notification guts, but not attached to window"

    .line 605
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 609
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 610
    invoke-virtual {p1, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 611
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v0, p0

    .line 612
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    return v7

    .line 618
    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->ensureGutsInflated()V

    .line 619
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v8

    .line 620
    iput-object v8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 621
    invoke-virtual {p0, v2, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result v0

    if-nez v0, :cond_3

    return v7

    :cond_3
    if-nez v8, :cond_4

    return v7

    :cond_4
    const/4 v0, 0x4

    .line 634
    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 636
    new-instance v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;

    move-object v0, v7

    move-object v1, p0

    move-object v3, v8

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOpenRunnable:Ljava/lang/Runnable;

    .line 662
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setCallback(Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    return-void
.end method

.method public setExposedGuts(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public setNotificationActivityStarter(Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    return-void
.end method

.method public setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "NotificationGutsManager"

    if-eqz p2, :cond_0

    .line 683
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    .line 684
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 685
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Keeping notification because it\'s showing guts. "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 688
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 689
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 690
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    .line 691
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 692
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Notification that was kept for guts was updated. "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 692
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 166
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 168
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

    return-void
.end method

.method public shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 676
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object p1

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 677
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isLeavebehind()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected startAppOpsSettingsActivity(Ljava/lang/String;ILandroid/util/ArraySet;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x18

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1b

    .line 236
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_APP_OVERLAY_PERMISSION"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    .line 233
    invoke-static {v0, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 234
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {p0, p3, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_1

    .line 230
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, v2, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppDetailsSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_1

    .line 236
    :cond_2
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 237
    :cond_3
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    .line 238
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {p0, p3, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_4
    :goto_1
    return-void
.end method
