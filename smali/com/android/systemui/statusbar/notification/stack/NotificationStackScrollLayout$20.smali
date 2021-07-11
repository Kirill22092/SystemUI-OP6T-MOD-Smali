.class Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/ExpandHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 7366
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canChildBeExpanded(Landroid/view/View;)Z
    .locals 1

    .line 7379
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 7380
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7381
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 7382
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$5100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public expansionStateChanged(Z)V
    .locals 1

    .line 7426
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$6002(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Z

    .line 7427
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$6100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7431
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$1800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$6202(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;I)I

    .line 7433
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$6102(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Z

    :cond_0
    return-void
.end method

.method public getChildAtPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 0

    .line 7369
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$5700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    return-object p0
.end method

.method public getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 0

    .line 7374
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    return-object p0
.end method

.method public getMaxExpandHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I
    .locals 0

    .line 7439
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result p0

    return p0
.end method

.method public setExpansionCancelled(Landroid/view/View;)V
    .locals 0

    .line 7410
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 7411
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    :cond_0
    return-void
.end method

.method public setUserExpandedChild(Landroid/view/View;Z)V
    .locals 1

    .line 7388
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 7389
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p2, :cond_0

    .line 7390
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 7398
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 7399
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$5800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 7400
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$5900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 7403
    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    .line 7404
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    :cond_1
    return-void
.end method

.method public setUserLockedChild(Landroid/view/View;Z)V
    .locals 1

    .line 7417
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 7418
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 7420
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 7421
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
