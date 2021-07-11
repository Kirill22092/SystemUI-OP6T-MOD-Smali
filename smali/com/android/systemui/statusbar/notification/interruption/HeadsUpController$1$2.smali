.class Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$2;
.super Ljava/lang/Object;
.source "HeadsUpController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$2;->this$1:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$2;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$2;->this$1:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$2;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$600(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$2;->this$1:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$100(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$2;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldHeadsUpWithReason(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$2;->this$1:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$300(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/oneplus/notification/OpNotificationController;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$2;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/oneplus/notification/OpNotificationController;->maybeShowSimpleHeadsUp(ILandroid/service/notification/StatusBarNotification;)V

    return-void
.end method
