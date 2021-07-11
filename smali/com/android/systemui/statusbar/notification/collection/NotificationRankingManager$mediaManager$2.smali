.class final Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$mediaManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationRankingManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;-><init>(Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationFilter;Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/systemui/statusbar/NotificationMediaManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$mediaManager$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/systemui/statusbar/NotificationMediaManager;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$mediaManager$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$getMediaManagerLazy$p(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$mediaManager$2;->invoke()Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object p0

    return-object p0
.end method
