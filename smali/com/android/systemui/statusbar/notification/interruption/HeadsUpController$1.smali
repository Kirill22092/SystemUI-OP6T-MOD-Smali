.class Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;
.super Ljava/lang/Object;
.source "HeadsUpController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onEntryAdded$0(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 137
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$400(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method


# virtual methods
.method public onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$000(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$500(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const-wide/16 p0, 0x44c

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$100(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HeadsUpBindController"

    const-string v1, "check the time of running bindHeadsUpView"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$200(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    new-instance v2, Lcom/android/systemui/statusbar/notification/interruption/-$$Lambda$HeadsUpController$1$KAqgh1j8KCQjqOCPlwm79iJxTXk;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/notification/interruption/-$$Lambda$HeadsUpController$1$KAqgh1j8KCQjqOCPlwm79iJxTXk;-><init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)V

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->bindHeadsUpView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$100(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldHeadsUpWithReason(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$300(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/oneplus/notification/OpNotificationController;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/notification/OpNotificationController;->maybeShowSimpleHeadsUp(ILandroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onEntryCleanUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$200(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->abortBindCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$700(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$000(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$500(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1$2;-><init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const-wide/16 p0, 0x44c

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$600(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$100(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldHeadsUpWithReason(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v0

    .line 170
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->access$300(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/oneplus/notification/OpNotificationController;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/notification/OpNotificationController;->maybeShowSimpleHeadsUp(ILandroid/service/notification/StatusBarNotification;)V

    return-void
.end method
