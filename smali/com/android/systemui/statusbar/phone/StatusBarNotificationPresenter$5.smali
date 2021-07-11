.class Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;
.super Ljava/lang/Object;
.source "StatusBarNotificationPresenter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "StatusBarNotificationPresenter"

    return-object p0
.end method

.method public suppressAwakeHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 6

    .line 511
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccluded()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "StatusBarNotificationPresenter"

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 513
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 514
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 516
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    .line 517
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 521
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-nez p0, :cond_2

    sget-boolean p0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_3

    :cond_2
    const-string p0, "No heads up: lockscreen is in public mode or needs redaction"

    .line 522
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v4

    .line 533
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$500(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/CommandQueue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 535
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$600(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/oneplus/notification/OpNotificationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/notification/OpNotificationController;->isPanelDisabledInBrickMode()Z

    move-result p1

    if-nez p1, :cond_7

    .line 543
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-nez p0, :cond_5

    sget-boolean p0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_6

    .line 545
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: disabled panel : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v4

    .line 550
    :cond_7
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_c

    .line 554
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$700(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccluded()Z

    move-result p1

    if-nez p1, :cond_9

    .line 555
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz p0, :cond_8

    .line 556
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: entry has fullscreen intent on lockscreen "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 556
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v4

    .line 562
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$800(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 569
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-nez p0, :cond_a

    sget-boolean p0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_b

    .line 570
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: accessible fullscreen: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v4

    :cond_c
    return v2
.end method

.method public suppressAwakeInterruptions(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isDeviceInVrMode()Z

    move-result p0

    return p0
.end method

.method public suppressInterruptions(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 586
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->areNotificationAlertsDisabled()Z

    move-result p0

    return p0
.end method
