.class Lcom/android/systemui/bubbles/BubbleController$5;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/BubbleController;->setupNEM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;ZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->access$1100(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onNotificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->access$1200(Lcom/android/systemui/bubbles/BubbleController;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public onPendingEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->access$900(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onPreEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$5;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->access$1000(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
