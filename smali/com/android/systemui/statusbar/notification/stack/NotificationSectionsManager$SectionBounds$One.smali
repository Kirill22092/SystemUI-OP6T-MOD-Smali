.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;
.super Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;
.source "NotificationSectionsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "One"
.end annotation


# instance fields
.field private final lone:Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/row/ExpandableView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "lone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;->lone:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;->lone:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;->lone:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getLone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;->lone:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;->lone:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "One(lone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;->lone:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
