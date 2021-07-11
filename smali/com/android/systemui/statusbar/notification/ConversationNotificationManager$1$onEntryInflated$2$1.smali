.class final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2$1;
.super Ljava/lang/Object;
.source "ConversationNotifications.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2;->onExpansionChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $isExpanded:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2$1;->$isExpanded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2;->$updateCount$1:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$2$1;->$isExpanded:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;->invoke(Z)V

    return-void
.end method
