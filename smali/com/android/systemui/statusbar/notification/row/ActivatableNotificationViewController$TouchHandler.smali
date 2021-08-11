.class Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;
.super Ljava/lang/Object;
.source "ActivatableNotificationViewController.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchHandler"
.end annotation


# instance fields
.field private mBlockNextTouch:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$100(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$300(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$200(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$300(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$400(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->isWithinDoubleTapSlop(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->mBlockNextTouch:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$300(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->mBlockNextTouch:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->mBlockNextTouch:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$100(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$200(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$300(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$100(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$300(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmed()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$400(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$300(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
