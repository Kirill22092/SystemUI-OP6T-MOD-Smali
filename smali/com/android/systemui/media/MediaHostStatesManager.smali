.class public final Lcom/android/systemui/media/MediaHostStatesManager;
.super Ljava/lang/Object;
.source "MediaHostStatesManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaHostStatesManager$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaHostStatesManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaHostStatesManager.kt\ncom/android/systemui/media/MediaHostStatesManager\n*L\n1#1,128:1\n*E\n"
.end annotation


# instance fields
.field private final callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/media/MediaHostStatesManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final carouselSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/util/animation/MeasurementOutput;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/media/MediaViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaHostStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/media/MediaHostState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->callbacks:Ljava/util/Set;

    .line 32
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->controllers:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->carouselSizes:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/media/MediaHostStatesManager$Callback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaHostStatesManager$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object p0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->callbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addController(Lcom/android/systemui/media/MediaViewController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaViewController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object p0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->controllers:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getCarouselSizes()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/util/animation/MeasurementOutput;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iget-object p0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->carouselSizes:Ljava/util/Map;

    return-object p0
.end method

.method public final getMediaHostStates()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/media/MediaHostState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    return-object p0
.end method

.method public final removeController(Lcom/android/systemui/media/MediaViewController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaViewController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object p0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->controllers:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateCarouselDimensions(ILcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/MeasurementOutput;
    .locals 5
    .param p2    # Lcom/android/systemui/media/MediaHostState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hostState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/android/systemui/util/animation/MeasurementOutput;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/systemui/util/animation/MeasurementOutput;-><init>(II)V

    .line 76
    iget-object v1, p0, Lcom/android/systemui/media/MediaHostStatesManager;->controllers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaViewController;

    .line 77
    invoke-virtual {v2, p2}, Lcom/android/systemui/media/MediaViewController;->getMeasurementsForState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/MeasurementOutput;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v2}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 80
    invoke-virtual {v2}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/animation/MeasurementOutput;->setMeasuredHeight(I)V

    .line 82
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredWidth()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 83
    invoke-virtual {v2}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/animation/MeasurementOutput;->setMeasuredWidth(I)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->carouselSizes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final updateHostState(ILcom/android/systemui/media/MediaHostState;)V
    .locals 3
    .param p2    # Lcom/android/systemui/media/MediaHostState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hostState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaHostState;

    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->copy()Lcom/android/systemui/media/MediaHostState;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/android/systemui/media/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/MediaHostStatesManager;->updateCarouselDimensions(ILcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/MeasurementOutput;

    .line 56
    iget-object p2, p0, Lcom/android/systemui/media/MediaHostStatesManager;->controllers:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaViewController;

    .line 57
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaViewController;->getStateCallback()Lcom/android/systemui/media/MediaHostStatesManager$Callback;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/android/systemui/media/MediaHostStatesManager$Callback;->onHostStateChanged(ILcom/android/systemui/media/MediaHostState;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->callbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaHostStatesManager$Callback;

    .line 62
    invoke-interface {p2, p1, v0}, Lcom/android/systemui/media/MediaHostStatesManager$Callback;->onHostStateChanged(ILcom/android/systemui/media/MediaHostState;)V

    goto :goto_1

    :cond_1
    return-void
.end method
