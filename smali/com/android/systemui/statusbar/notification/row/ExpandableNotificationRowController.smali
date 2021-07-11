.class public Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;
.super Ljava/lang/Object;
.source "ExpandableNotificationRowController.java"


# instance fields
.field private final mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

.field private final mAllowLongPress:Z

.field private final mAppName:Ljava/lang/String;

.field private final mClock:Lcom/android/systemui/util/time/SystemClock;

.field private final mExpansionLogger:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$ExpansionLogger;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mNotificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field private final mNotificationKey:Ljava/lang/String;

.field private final mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

.field private final mOnAppOpsClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;

.field private mOnDismissRunnable:Ljava/lang/Runnable;

.field private final mOnExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

.field private final mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private final mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/util/time/SystemClock;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;ZLjava/lang/Runnable;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;)V
    .locals 3

    move-object v0, p0

    move-object/from16 v1, p15

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableNotificationRowController$7PRoCj-f2CPB0eC3liBvfR80zWU;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableNotificationRowController$7PRoCj-f2CPB0eC3liBvfR80zWU;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mExpansionLogger:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$ExpansionLogger;

    move-object v2, p1

    .line 88
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object v2, p2

    .line 89
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    move-object v2, p3

    .line 90
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-object v2, p4

    .line 91
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    move-object v2, p5

    .line 92
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    move-object v2, p6

    .line 93
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mAppName:Ljava/lang/String;

    move-object v2, p7

    .line 94
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mNotificationKey:Ljava/lang/String;

    move-object v2, p8

    .line 95
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object v2, p9

    .line 96
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mNotificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object v2, p10

    .line 97
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    move-object v2, p11

    .line 98
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    move-object v2, p12

    .line 99
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v2, p13

    .line 100
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mOnExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    move-object/from16 v2, p14

    .line 101
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 102
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-object/from16 v2, p17

    .line 103
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mOnDismissRunnable:Ljava/lang/Runnable;

    .line 104
    invoke-static/range {p15 .. p15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$oy9pBf4KjrW7ZRpgHkpOCIaDYlg;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$oy9pBf4KjrW7ZRpgHkpOCIaDYlg;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mOnAppOpsClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;

    move/from16 v1, p16

    .line 105
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mAllowLongPress:Z

    move-object/from16 v1, p18

    .line 106
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v1, p19

    .line 107
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)Lcom/android/systemui/util/time/SystemClock;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)Lcom/android/systemui/shared/plugins/PluginManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    return-object p0
.end method

.method public static synthetic lambda$7PRoCj-f2CPB0eC3liBvfR80zWU(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->logNotificationExpansion(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private synthetic lambda$setLongPressListenerIfNeeded$0(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->expandNotification()V

    const/4 p0, 0x1

    return p0

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->openGuts(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result p0

    return p0
.end method

.method private logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->onExpansionChanged(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 15

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->init()V

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mAppName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mNotificationKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mExpansionLogger:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$ExpansionLogger;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mNotificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mOnExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v11, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mOnAppOpsClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;

    iget-object v12, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object v13, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v14, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    invoke-virtual/range {v1 .. v14}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->initialize(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$ExpansionLogger;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mOnDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnDismissRunnable(Ljava/lang/Runnable;)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->setLongPressListenerIfNeeded()V

    .line 146
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public synthetic lambda$setLongPressListenerIfNeeded$0$ExpandableNotificationRowController(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->lambda$setLongPressListenerIfNeeded$0(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result p0

    return p0
.end method

.method public setLongPressListenerIfNeeded()V
    .locals 2

    .line 177
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mAllowLongPress:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableNotificationRowController$6Nlf1kO-1fxOfAdCtUiLbXCFVIg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableNotificationRowController$6Nlf1kO-1fxOfAdCtUiLbXCFVIg;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setLongPressListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;)V

    :cond_0
    return-void
.end method

.method public setOnDismissRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mOnDismissRunnable:Ljava/lang/Runnable;

    .line 172
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnDismissRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
