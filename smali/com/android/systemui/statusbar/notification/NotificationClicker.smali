.class public final Lcom/android/systemui/statusbar/notification/NotificationClicker;
.super Ljava/lang/Object;
.source "NotificationClicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;
    }
.end annotation


# instance fields
.field private final mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

.field private final mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field private final mStatusBar:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/bubbles/BubbleController;",
            "Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mStatusBar:Ljava/util/Optional;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;Lcom/android/systemui/statusbar/notification/NotificationClicker$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationClicker;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V

    return-void
.end method

.method private isMenuVisible(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$onClick$0(Landroid/view/View;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "NOTIFICATION_CLICK"

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onClick$1(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setJustClicked(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v0, :cond_0

    const-string p0, "NotificationClicker"

    const-string p1, "NotificationClicker called on a view that is not a notification row."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mStatusBar:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationClicker$yfbp07NzZ_fwFSXR0B2xHX63zDM;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationClicker$yfbp07NzZ_fwFSXR0B2xHX63zDM;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;->logOnClick(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationClicker;->isMenuVisible(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;->logMenuVisible(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->animateTranslateNotification(F)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker;->isMenuVisible(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;->logParentMenuVisible(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->animateTranslateNotification(F)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;->logChildrenExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;->logGutsExposed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setJustClicked(Z)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationClicker$CH899qDTz3sQ4q5eBHDPoFomAGA;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationClicker$CH899qDTz3sQ4q5eBHDPoFomAGA;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleController;->collapseStack()V

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->onNotificationClicked(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public register(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    const-string v0, "NotificationClicker"

    if-nez p1, :cond_0

    const-string p0, "notification row is null, don\'t register listener"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x1

    :goto_1
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notification add listener:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
