.class final synthetic Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "ConversationNotifications.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->onNotificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/statusbar/notification/row/NotificationContentView;",
        "Lkotlin/sequences/Sequence<",
        "+",
        "Landroid/view/View;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "getLayouts"

    return-object p0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 0

    const-string p0, "invoke(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)Lkotlin/sequences/Sequence;"

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$1;->invoke(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)Lkotlin/sequences/Sequence;
    .locals 0
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

    const-string p0, "p1"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$1;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$1;->invoke(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method
