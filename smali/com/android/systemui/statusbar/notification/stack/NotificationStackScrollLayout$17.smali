.class Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;


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

    .line 7196
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDragDownAnywhereEnabled()Z
    .locals 2

    .line 7304
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 7305
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$5000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDragDownEnabledForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 1

    .line 7279
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->isDragDownAnywhereEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 7282
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 7294
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_1

    .line 7296
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSensitive()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isFalsingCheckNeeded()Z
    .locals 1

    .line 7274
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCrossedThreshold(Z)V
    .locals 1

    .line 7258
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    return-void
.end method

.method public onDragDownReset()V
    .locals 2

    .line 7251
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 7252
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 7253
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    return-void
.end method

.method public onDraggedDown(Landroid/view/View;I)Z
    .locals 5

    .line 7202
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    const-string v1, "StackScroller"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 7203
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isQsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "return DraggedDown"

    .line 7204
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 7209
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 7210
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/media/KeyguardMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/KeyguardMediaController;->getView()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 7211
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I

    move-result v4

    if-ne v4, v3, :cond_6

    if-eqz v0, :cond_6

    .line 7214
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "DragDownCallback.onDraggedDown: all panels disabled, isFactoryMode."

    .line 7215
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 7219
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    move-result-object v0

    const/16 v1, 0xbb

    int-to-float p2, p2

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 7221
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v4

    float-to-int p2, p2

    .line 7219
    invoke-virtual {v0, v1, p2, v2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 7223
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_PULL_SHADE_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    .line 7225
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_5

    .line 7227
    :cond_4
    const-class p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToLockedShade(Landroid/view/View;)V

    .line 7228
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_5

    .line 7229
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 7230
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    :cond_5
    return v3

    :cond_6
    return v2
.end method

.method public onTouchSlopExceeded()V
    .locals 1

    .line 7263
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 7264
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 0

    .line 7269
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setEmptyDragAmount(F)V

    return-void
.end method
