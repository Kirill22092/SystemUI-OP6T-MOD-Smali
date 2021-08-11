.class Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$1;
.super Ljava/lang/Object;
.source "HeadsUpController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$1;->this$1:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$1;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$400(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$1;->this$1:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$100(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$1;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HeadsUpBindController"

    const-string v1, "check the time of running bindHeadsUpView in run method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$1;->this$1:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$200(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$1;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$1;->this$1:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    new-instance v3, Lcom/android/systemui/statusbar/notification/interruption/-$$Lambda$HeadsUpController$1$1$BFH-ZgAVuDmDtc5cjDcODlD5CUM;

    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/notification/interruption/-$$Lambda$HeadsUpController$1$1$BFH-ZgAVuDmDtc5cjDcODlD5CUM;-><init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->bindHeadsUpView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$1;->this$1:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$100(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$1;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldHeadsUpWithReason(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$1;->this$1:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$300(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/oneplus/notification/OpNotificationController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$1;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/notification/OpNotificationController;->maybeShowSimpleHeadsUp(ILandroid/service/notification/StatusBarNotification;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$1;->this$1:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$100(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->setIsContactsChanged(Z)V

    return-void
.end method
