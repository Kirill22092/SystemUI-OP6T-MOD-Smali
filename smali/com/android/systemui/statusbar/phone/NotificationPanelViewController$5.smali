.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$5;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->startQsSizeChangeAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 899
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 900
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 901
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 902
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setHeightOverride(I)V

    return-void
.end method
