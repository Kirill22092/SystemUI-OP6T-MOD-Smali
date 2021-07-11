.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS$HeightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeightListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 4101
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 4101
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public onQsHeightChanged()V
    .locals 5

    .line 4103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v0

    .line 4104
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 4106
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 4107
    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQsHeightChanged: mQsMaxExpansionHeight "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 4108
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Exception;

    const-string v4, "Callers"

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4107
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4110
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F

    .line 4112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 4113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 4115
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 4118
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 4119
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p0

    add-int/2addr v1, p0

    .line 4118
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setMaxTopPadding(I)V

    return-void
.end method
