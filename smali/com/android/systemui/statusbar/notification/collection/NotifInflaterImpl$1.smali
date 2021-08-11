.class Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;
.super Ljava/lang/Object;
.source "NotifInflaterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->getDismissCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->access$100(Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->access$000(Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;)Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getShadeListCount()I

    move-result v5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p0

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6, p0}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    const/4 v3, 0x3

    invoke-direct {v2, v3, v6, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    return-void
.end method
