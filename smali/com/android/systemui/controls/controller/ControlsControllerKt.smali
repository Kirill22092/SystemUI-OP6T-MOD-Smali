.class public final Lcom/android/systemui/controls/controller/ControlsControllerKt;
.super Ljava/lang/Object;
.source "ControlsController.kt"


# direct methods
.method public static final createLoadDataObject(Ljava/util/List;Ljava/util/List;Z)Lcom/android/systemui/controls/controller/ControlsController$LoadData;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/systemui/controls/controller/ControlsController$LoadData;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "allControls"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favorites"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    return-object v0
.end method

.method public static synthetic createLoadDataObject$default(Ljava/util/List;Ljava/util/List;ZILjava/lang/Object;)Lcom/android/systemui/controls/controller/ControlsController$LoadData;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsControllerKt;->createLoadDataObject(Ljava/util/List;Ljava/util/List;Z)Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    move-result-object p0

    return-object p0
.end method
