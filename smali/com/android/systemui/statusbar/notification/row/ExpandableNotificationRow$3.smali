.class Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$3;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getBubbleClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-class p1, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/BubbleController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->onUserChangedBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$1400(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    return-void
.end method
