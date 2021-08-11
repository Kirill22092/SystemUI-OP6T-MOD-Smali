.class Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;
.super Ljava/lang/Object;
.source "NotificationShadeWindowViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setupExpandedStatusBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didIntercept(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public didNotHandleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_3

    const/16 v4, 0x52

    if-eq v3, v4, :cond_2

    const/16 v0, 0x18

    if-eq v3, v0, :cond_1

    const/16 v0, 0x19

    if-eq v3, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object p0

    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, v0, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    return v2

    :cond_2
    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onMenuPressed()Z

    move-result p0

    return p0

    :cond_3
    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onSpacePressed()Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    return v1

    :cond_5
    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBackPressed()Z

    :cond_6
    return v2
.end method

.method public handleDispatchTouchEvent(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 10

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-class v1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v4, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v8

    if-nez v5, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v9, v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$502(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z

    :cond_4
    if-nez v6, :cond_5

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldIgnoreTouch()Z

    move-result v9

    if-eqz v9, :cond_5

    return-object v0

    :cond_5
    if-eqz v2, :cond_6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandLatencyTracking()V

    :cond_6
    if-eqz v2, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setTouchActive(Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v7, v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$702(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eq v9, v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-ne v9, v7, :cond_9

    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setTouchActive(Z)V

    :cond_9
    :goto_3
    sget-boolean v7, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchTouchEvent / isDown:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isCancel:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mTouchCancelled:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$700(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mExpandAnimationRunning:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mExpandAnimationPending:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$900(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isHighLightHintShow():"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v9}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isHighLightHintShow()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isCarModeHighlightHintSHow():"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v9}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "NotificationShadeWindow"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$700(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v7

    if-nez v7, :cond_18

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v7

    if-nez v7, :cond_18

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$900(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto/16 :goto_4

    :cond_b
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v7}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isHighLightHintShow()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v1}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->onHightlightHintIntercept(Landroid/view/MotionEvent;)Z

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1000(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    invoke-interface {v1, p1, v7, v9}, Lcom/android/systemui/plugins/FalsingManager;->onTouchEvent(Landroid/view/MotionEvent;II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v7, 0x5

    if-ne v1, v7, :cond_e

    return-object v0

    :cond_e
    if-eqz v2, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->extendPulse()V

    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$502(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z

    move v8, v4

    :cond_11
    if-eqz v8, :cond_12

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz v2, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v5

    invoke-static {v2, v5, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1700(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isSameStatusBarState(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1602(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_13
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v5, :cond_15

    if-eqz v6, :cond_16

    :cond_15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1602(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z

    :cond_16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0

    :cond_18
    :goto_4
    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DragDownHelper;->isDragDownEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_3
    return v0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeActive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->disPatchTouchEvent(Landroid/view/MotionEvent;)V

    return v1

    :cond_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_7

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_7

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-class v0, Lcom/oneplus/battery/OpChargingAnimationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/battery/OpChargingAnimationController;

    invoke-interface {v0}, Lcom/oneplus/battery/OpChargingAnimationController;->isAnimationStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getFpAnimationCtrl()Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getFpAnimationCtrl()Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->isPlayingAnimation()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/dock/DockManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DragDownHelper;->isDragDownEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method
