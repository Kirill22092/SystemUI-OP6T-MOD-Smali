.class final Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationSectionsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->updateSectionBoundaries(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState<",
        "+",
        "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $alertingState:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

.field final synthetic $gentleState:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

.field final synthetic $incomingState:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

.field final synthetic $mediaState:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

.field final synthetic $peopleState:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->$mediaState:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->$incomingState:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->$peopleState:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->$alertingState:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->$gentleState:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getMediaControlsView()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->$mediaState:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getIncomingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->$incomingState:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getPeopleHeaderView()Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->$peopleState:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getAlertingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->$alertingState:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getSilentHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->$gentleState:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1;->invoke(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    move-result-object p0

    return-object p0
.end method
