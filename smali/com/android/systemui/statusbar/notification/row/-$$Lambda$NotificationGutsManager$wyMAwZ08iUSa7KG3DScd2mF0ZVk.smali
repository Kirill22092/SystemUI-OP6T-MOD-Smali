.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$wyMAwZ08iUSa7KG3DScd2mF0ZVk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final synthetic f$1:Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field public final synthetic f$3:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$wyMAwZ08iUSa7KG3DScd2mF0ZVk;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$wyMAwZ08iUSa7KG3DScd2mF0ZVk;->f$1:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$wyMAwZ08iUSa7KG3DScd2mF0ZVk;->f$2:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$wyMAwZ08iUSa7KG3DScd2mF0ZVk;->f$3:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$wyMAwZ08iUSa7KG3DScd2mF0ZVk;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$wyMAwZ08iUSa7KG3DScd2mF0ZVk;->f$1:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$wyMAwZ08iUSa7KG3DScd2mF0ZVk;->f$2:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$wyMAwZ08iUSa7KG3DScd2mF0ZVk;->f$3:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$initializeAppOpsInfo$2$NotificationGutsManager(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V

    return-void
.end method
