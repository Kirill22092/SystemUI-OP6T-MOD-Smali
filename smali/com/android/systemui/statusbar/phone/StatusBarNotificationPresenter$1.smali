.class Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;
.super Ljava/lang/Object;
.source "StatusBarNotificationPresenter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->lambda$new$0(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;ZI)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->onNotificationRemoved(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$900(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    :cond_0
    return-void
.end method
