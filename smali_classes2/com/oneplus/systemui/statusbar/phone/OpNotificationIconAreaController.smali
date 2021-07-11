.class public Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconAreaController;
.super Ljava/lang/Object;
.source "OpNotificationIconAreaController.java"


# instance fields
.field protected mAodNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

.field private final mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lcom/oneplus/notification/OpNotificationController;

    .line 34
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/notification/OpNotificationController;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconAreaController;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    return-void
.end method


# virtual methods
.method public setAodIconController(Lcom/oneplus/aod/OpAodNotificationIconAreaController;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconAreaController;->mAodNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    return-void
.end method

.method protected shouldShowNotificationIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZZZZLcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)Z
    .locals 5

    move-object/from16 v0, p12

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getCenteredIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getCenteredIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p9, :cond_1

    return v0

    :cond_1
    if-eqz p7, :cond_2

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowHeadsUp()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 54
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    return v2

    :cond_3
    if-eqz p6, :cond_4

    .line 57
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    if-nez p3, :cond_5

    .line 60
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_5

    return v2

    .line 63
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isTopLevelChild()Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    .line 66
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_7

    return v2

    .line 69
    :cond_7
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p4, :cond_8

    return v2

    :cond_8
    if-eqz p5, :cond_9

    .line 72
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isLastMessageFromReply()Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    :cond_9
    if-nez p2, :cond_a

    .line 76
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressStatusBar()Z

    move-result v0

    if-eqz v0, :cond_a

    return v2

    :cond_a
    if-eqz p8, :cond_c

    .line 79
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showingPulsing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 80
    invoke-virtual/range {p14 .. p14}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getNotificationsFullyHidden()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 81
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPulseSuppressed()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    return v2

    :cond_c
    move-object v0, p1

    move-object/from16 v3, p13

    .line 84
    invoke-virtual {v3, p1}, Lcom/android/systemui/bubbles/BubbleController;->isBubbleExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v3

    if-eqz v3, :cond_d

    return v2

    :cond_d
    if-eqz p10, :cond_f

    const/4 v3, 0x0

    .line 90
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 91
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    :cond_e
    if-eqz v3, :cond_f

    const-string v0, "hide_icon"

    .line 93
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    return v2

    :cond_f
    return v1
.end method

.method protected updateTintForIconInternal(Lcom/android/systemui/statusbar/StatusBarIconView;ILandroid/content/Context;Lcom/android/internal/util/ContrastColorUtil;Landroid/graphics/Rect;)V
    .locals 3

    .line 105
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v1, Lcom/android/systemui/R$id;->icon_is_pre_L:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 110
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 112
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconAreaController;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    invoke-virtual {p0, v1}, Lcom/oneplus/notification/OpNotificationController;->shouldColorizeIcon(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    if-eqz v0, :cond_4

    .line 113
    invoke-static {p1, p4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 115
    invoke-static {p3}, Lcom/oneplus/util/OpUtils;->isGlobalROM(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    invoke-static {p1, p4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 119
    invoke-static {p5, p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    .line 121
    :cond_5
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 122
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method
