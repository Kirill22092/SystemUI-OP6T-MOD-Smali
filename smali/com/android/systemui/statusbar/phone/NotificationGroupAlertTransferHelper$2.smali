.class Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;
.super Ljava/lang/Object;
.source "NotificationGroupAlertTransferHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;ZI)V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$700(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPendingEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$400(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$100(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;

    if-eqz p1, :cond_0

    .line 191
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$600(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;)V

    :cond_0
    return-void
.end method
