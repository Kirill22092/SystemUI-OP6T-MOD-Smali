.class final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2;
.super Ljava/lang/Object;
.source "ConversationNotifications.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpansionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->onEntryInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic $updateCount$1:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2;->$updateCount$1:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExpansionChanged(Z)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2$1;-><init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->performOnIntrinsicHeightReached(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2;->$updateCount$1:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;->invoke(Z)V

    :goto_0
    return-void
.end method
