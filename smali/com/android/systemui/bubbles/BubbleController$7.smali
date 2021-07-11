.class Lcom/android/systemui/bubbles/BubbleController$7;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/BubbleController;->setupNEM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$7;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupSuppressionChanged(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V
    .locals 0

    .line 603
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 606
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleController$7;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    .line 607
    invoke-static {p2}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 608
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$7;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->removeSuppressedSummary(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
