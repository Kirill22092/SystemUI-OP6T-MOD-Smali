.class final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ConversationNotifications.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->onEntryInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConversationNotifications.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConversationNotifications.kt\ncom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1\n*L\n1#1,206:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;->invoke(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->access$getNotifPanelCollapsed$p(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPinnedAndExpanded()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "entry.key"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->access$resetCount(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->access$resetBadgeUi(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_1
    return-void
.end method
