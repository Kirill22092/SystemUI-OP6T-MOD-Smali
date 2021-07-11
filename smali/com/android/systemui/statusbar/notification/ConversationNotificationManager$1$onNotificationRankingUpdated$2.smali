.class final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$2;
.super Ljava/lang/Object;
.source "ConversationNotifications.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->onNotificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $important:Z

.field final synthetic $layout:Lcom/android/internal/widget/ConversationLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ConversationLayout;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$2;->$layout:Lcom/android/internal/widget/ConversationLayout;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$2;->$important:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$2;->$layout:Lcom/android/internal/widget/ConversationLayout;

    .line 103
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$2;->$important:Z

    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout;->setIsImportantConversation(ZZ)V

    return-void
.end method
