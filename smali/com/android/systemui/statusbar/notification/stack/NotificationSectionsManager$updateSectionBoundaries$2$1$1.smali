.class final Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$2$1$1;
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
        "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState<",
        "+",
        "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $state:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$2$1$1;->$state:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$2$1$1;->invoke(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;)Z
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState<",
            "+",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$2$1$1;->$state:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
