.class Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;
.super Ljava/lang/Object;
.source "ExpandableNotificationRowController.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->access$100(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->access$000(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)Lcom/android/systemui/util/time/SystemClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setInitializationTime(J)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)Lcom/android/systemui/shared/plugins/PluginManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->access$100(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    const-class v0, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)Lcom/android/systemui/shared/plugins/PluginManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->access$100(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    return-void
.end method
