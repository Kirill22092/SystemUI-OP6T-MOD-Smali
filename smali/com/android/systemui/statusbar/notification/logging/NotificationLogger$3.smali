.class Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$3;
.super Ljava/lang/Object;
.source "NotificationLogger.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$3;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;ZI)V
    .locals 1

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 230
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$3;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-static {p3, p4, v0, p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$700(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 232
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$3;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$600(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->onEntryRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public onInflationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$3;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$800(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    return-void
.end method

.method public onPreEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$3;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->access$600(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->onEntryUpdated(Ljava/lang/String;)V

    return-void
.end method
