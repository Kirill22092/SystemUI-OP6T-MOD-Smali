.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$7;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
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

    .line 1818
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1821
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 1822
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusView;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->setVisibility(I)V

    return-void
.end method
