.class final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$1;
.super Ljava/lang/Object;
.source "ConversationNotifications.kt"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->onNotificationPanelExpandStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljava/lang/String;",
        "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;",
        "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConversationNotifications.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConversationNotifications.kt\ncom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$1\n*L\n1#1,206:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $expanded:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$1;->$expanded:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;)Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$1;->$expanded:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-static {p2, p0, v0, p1, v0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->copy$default(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;ILandroid/app/Notification;ILjava/lang/Object;)Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$1;->apply(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;)Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    move-result-object p0

    return-object p0
.end method
