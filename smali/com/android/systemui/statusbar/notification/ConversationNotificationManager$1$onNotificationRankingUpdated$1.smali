.class final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ConversationNotifications.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->onNotificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/statusbar/notification/row/NotificationContentView;",
        "Lkotlin/sequences/Sequence<",
        "+",
        "Landroid/view/View;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$1;->invoke(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)Lkotlin/sequences/Sequence;
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/notification/row/NotificationContentView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentView;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x3

    new-array p0, p0, [Landroid/view/View;

    .line 81
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, p0, v0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method
