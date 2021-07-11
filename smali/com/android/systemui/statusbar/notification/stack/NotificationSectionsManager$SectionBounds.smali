.class abstract Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;
.super Ljava/lang/Object;
.source "NotificationSectionsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SectionBounds"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;,
        Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;,
        Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 452
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;-><init>()V

    return-void
.end method

.method private final setFirstAndLastVisibleChildren(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/notification/stack/NotificationSection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 478
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result p0

    .line 479
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result p1

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final addNotif(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/notification/row/ExpandableView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "notif"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    goto :goto_0

    .line 464
    :cond_0
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;->getLone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    move-object p0, v0

    goto :goto_0

    .line 465
    :cond_1
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;->copy$default(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;ILjava/lang/Object;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final updateSection(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;)Z
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/notification/stack/NotificationSection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "section"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;->setFirstAndLastVisibleChildren(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result p0

    goto :goto_0

    .line 470
    :cond_0
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;->getLone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;->getLone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;->setFirstAndLastVisibleChildren(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result p0

    goto :goto_0

    .line 471
    :cond_1
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;->getFirst()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;->getLast()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;->setFirstAndLastVisibleChildren(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result p0

    :goto_0
    return p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
