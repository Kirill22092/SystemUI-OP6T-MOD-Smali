.class public final Lcom/android/systemui/media/MediaViewController;
.super Ljava/lang/Object;
.source "MediaViewController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaViewController.kt\ncom/android/systemui/media/MediaViewController\n*L\n1#1,437:1\n*E\n"
.end annotation


# instance fields
.field private animateNextStateChange:Z

.field private animationDelay:J

.field private animationDuration:J

.field private final collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final configurationListener:Lcom/android/systemui/media/MediaViewController$configurationListener$1;

.field private currentEndLocation:I

.field private currentHeight:I

.field private currentStartLocation:I

.field private currentTransitionProgress:F

.field private currentWidth:I

.field private final expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private firstRefresh:Z

.field private final layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

.field private final measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

.field private final mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

.field public sizeChangedListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final stateCallback:Lcom/android/systemui/media/MediaHostStatesManager$Callback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tmpKey:Lcom/android/systemui/media/CacheKey;

.field private final tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

.field private final tmpState2:Lcom/android/systemui/util/animation/TransitionViewState;

.field private final tmpState3:Lcom/android/systemui/util/animation/TransitionViewState;

.field private transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

.field private final viewStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/media/CacheKey;",
            "Lcom/android/systemui/util/animation/TransitionViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/MediaHostStatesManager;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/policy/ConfigurationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaHostStatesManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaHostStatesManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p3, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p0, Lcom/android/systemui/media/MediaViewController;->firstRefresh:Z

    .line 46
    new-instance p2, Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-direct {p2}, Lcom/android/systemui/util/animation/TransitionLayoutController;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    .line 50
    new-instance p2, Lcom/android/systemui/util/animation/MeasurementOutput;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3}, Lcom/android/systemui/util/animation/MeasurementOutput;-><init>(II)V

    iput-object p2, p0, Lcom/android/systemui/media/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    .line 55
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/Map;

    const/4 p2, -0x1

    .line 62
    iput p2, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    .line 69
    iput p2, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 74
    iput p2, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    .line 79
    new-instance p2, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p2}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 84
    new-instance p2, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p2}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaViewController;->tmpState2:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 89
    new-instance p2, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p2}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaViewController;->tmpState3:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 94
    new-instance p2, Lcom/android/systemui/media/CacheKey;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/CacheKey;-><init>(IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/android/systemui/media/MediaViewController;->tmpKey:Lcom/android/systemui/media/CacheKey;

    .line 128
    new-instance p2, Lcom/android/systemui/media/MediaViewController$configurationListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/MediaViewController$configurationListener$1;-><init>(Lcom/android/systemui/media/MediaViewController;)V

    iput-object p2, p0, Lcom/android/systemui/media/MediaViewController;->configurationListener:Lcom/android/systemui/media/MediaViewController$configurationListener$1;

    .line 146
    new-instance p2, Lcom/android/systemui/media/MediaViewController$stateCallback$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/MediaViewController$stateCallback$1;-><init>(Lcom/android/systemui/media/MediaViewController;)V

    iput-object p2, p0, Lcom/android/systemui/media/MediaViewController;->stateCallback:Lcom/android/systemui/media/MediaHostStatesManager$Callback;

    .line 164
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 170
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 173
    iget-object p2, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    sget p3, Lcom/android/systemui/R$xml;->media_collapsed:I

    invoke-virtual {p2, p1, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 174
    iget-object p2, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    sget p3, Lcom/android/systemui/R$xml;->media_expanded:I

    invoke-virtual {p2, p1, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 175
    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/MediaHostStatesManager;->addController(Lcom/android/systemui/media/MediaViewController;)V

    .line 176
    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    new-instance p2, Lcom/android/systemui/media/MediaViewController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/MediaViewController$1;-><init>(Lcom/android/systemui/media/MediaViewController;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setSizeChangedListener(Lkotlin/jvm/functions/Function2;)V

    .line 181
    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->configurationListener:Lcom/android/systemui/media/MediaViewController$configurationListener$1;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getCurrentEndLocation$p(Lcom/android/systemui/media/MediaViewController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    return p0
.end method

.method public static final synthetic access$getCurrentStartLocation$p(Lcom/android/systemui/media/MediaViewController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    return p0
.end method

.method public static final synthetic access$getCurrentTransitionProgress$p(Lcom/android/systemui/media/MediaViewController;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    return p0
.end method

.method public static final synthetic access$getTransitionLayout$p(Lcom/android/systemui/media/MediaViewController;)Lcom/android/systemui/util/animation/TransitionLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    return-object p0
.end method

.method private final constraintSetForExpansion(F)Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 1

    const/4 v0, 0x0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 203
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    :goto_0
    return-object p0
.end method

.method private final ensureAllMeasurements()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaHostState;

    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final getKey(Lcom/android/systemui/media/MediaHostState;Lcom/android/systemui/media/CacheKey;)Lcom/android/systemui/media/CacheKey;
    .locals 1

    .line 257
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/animation/MeasurementInput;->getHeightMeasureSpec()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/systemui/media/CacheKey;->setHeightMeasureSpec(I)V

    .line 258
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidthMeasureSpec()I

    move-result v0

    :cond_1
    invoke-virtual {p2, v0}, Lcom/android/systemui/media/CacheKey;->setWidthMeasureSpec(I)V

    .line 259
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/systemui/media/CacheKey;->setExpansion(F)V

    return-object p2
.end method

.method private final obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 210
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/media/MediaViewController;->tmpKey:Lcom/android/systemui/media/CacheKey;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/media/MediaViewController;->getKey(Lcom/android/systemui/media/MediaHostState;Lcom/android/systemui/media/CacheKey;)Lcom/android/systemui/media/CacheKey;

    .line 215
    iget-object v1, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/TransitionViewState;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    .line 221
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/media/CacheKey;->copy$default(Lcom/android/systemui/media/CacheKey;IIFILjava/lang/Object;)Lcom/android/systemui/media/CacheKey;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-eqz v2, :cond_8

    .line 225
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v4

    if-nez v2, :cond_2

    goto :goto_0

    .line 237
    :cond_2
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->copy()Lcom/android/systemui/media/MediaHostState;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/systemui/media/MediaHostState;->setExpansion(F)V

    .line 241
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v6

    const-string v0, "null cannot be cast to non-null type com.android.systemui.util.animation.TransitionViewState"

    if-eqz v6, :cond_4

    .line 242
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->copy()Lcom/android/systemui/media/MediaHostState;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/systemui/media/MediaHostState;->setExpansion(F)V

    .line 243
    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 244
    iget-object v5, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    .line 247
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    .line 244
    invoke-static/range {v5 .. v11}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getInterpolatedState$default(Lcom/android/systemui/util/animation/TransitionLayoutController;Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;ILjava/lang/Object;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v0

    goto :goto_1

    .line 243
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 241
    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 226
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-eqz v2, :cond_7

    .line 227
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 228
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaViewController;->constraintSetForExpansion(F)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    .line 229
    new-instance v0, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v0}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    .line 226
    invoke-virtual {v2, v3, p1, v0}, Lcom/android/systemui/util/animation/TransitionLayout;->calculateViewState(Lcom/android/systemui/util/animation/MeasurementInput;Landroidx/constraintlayout/widget/ConstraintSet;Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v0

    .line 234
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 227
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 226
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_8
    :goto_1
    return-object v0
.end method

.method private final obtainViewStateForLocation(I)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/MediaHostState;

    if-eqz p1, :cond_0

    .line 390
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final updateViewStateToCarouselSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 0

    if-eqz p1, :cond_1

    .line 368
    invoke-virtual {p1, p3}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 369
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHostStatesManager;->getCarouselSizes()Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/animation/MeasurementOutput;

    if-eqz p0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/TransitionViewState;->setHeight(I)V

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result p2

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/animation/TransitionViewState;->setWidth(I)V

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final animatePendingStateChange(JJ)V
    .locals 1

    const/4 v0, 0x1

    .line 407
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->animateNextStateChange:Z

    .line 408
    iput-wide p1, p0, Lcom/android/systemui/media/MediaViewController;->animationDuration:J

    .line 409
    iput-wide p3, p0, Lcom/android/systemui/media/MediaViewController;->animationDelay:J

    return-void
.end method

.method public final attach(Lcom/android/systemui/util/animation/TransitionLayout;)V
    .locals 3
    .param p1    # Lcom/android/systemui/util/animation/TransitionLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "transitionLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 270
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/animation/TransitionLayoutController;->attach(Lcom/android/systemui/util/animation/TransitionLayout;)V

    .line 271
    iget p1, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    .line 278
    iget v1, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    const/4 v2, 0x1

    .line 275
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    return-void
.end method

.method public final getCollapsedLayout()Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 164
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    return-object p0
.end method

.method public final getCurrentHeight()I
    .locals 0

    .line 105
    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentHeight:I

    return p0
.end method

.method public final getCurrentWidth()I
    .locals 0

    .line 100
    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentWidth:I

    return p0
.end method

.method public final getExpandedLayout()Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 170
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    return-object p0
.end method

.method public final getMeasurementsForState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/MeasurementOutput;
    .locals 2
    .param p1    # Lcom/android/systemui/media/MediaHostState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "hostState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/MeasurementOutput;->setMeasuredWidth(I)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/animation/MeasurementOutput;->setMeasuredHeight(I)V

    .line 291
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSizeChangedListener()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->sizeChangedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "sizeChangedListener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getStateCallback()Lcom/android/systemui/media/MediaHostStatesManager$Callback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 146
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->stateCallback:Lcom/android/systemui/media/MediaHostStatesManager$Callback;

    return-object p0
.end method

.method public final getTranslationX()F
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getTranslationY()F
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onDestroy()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/MediaHostStatesManager;->removeController(Lcom/android/systemui/media/MediaViewController;)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->configurationListener:Lcom/android/systemui/media/MediaViewController$configurationListener$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onLocationPreChange(I)V
    .locals 0

    .line 398
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaViewController;->obtainViewStateForLocation(I)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 399
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setMeasureState(Lcom/android/systemui/util/animation/TransitionViewState;)V

    :cond_0
    return-void
.end method

.method public final refreshState()V
    .locals 4

    .line 417
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 418
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->firstRefresh:Z

    if-eqz v0, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/media/MediaViewController;->ensureAllMeasurements()V

    const/4 v0, 0x0

    .line 422
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->firstRefresh:Z

    .line 424
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    iget v1, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    iget v2, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    return-void
.end method

.method public final setCurrentHeight(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/android/systemui/media/MediaViewController;->currentHeight:I

    return-void
.end method

.method public final setCurrentState(IIFZ)V
    .locals 10

    .line 304
    iput p2, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    .line 305
    iput p1, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    .line 306
    iput p3, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    .line 308
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->animateNextStateChange:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaHostState;

    if-eqz v0, :cond_9

    .line 311
    iget-object v2, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaHostState;

    .line 316
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 317
    iget-object v4, p0, Lcom/android/systemui/media/MediaViewController;->tmpState2:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p0, v3, p2, v4}, Lcom/android/systemui/media/MediaViewController;->updateViewStateToCarouselSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 318
    iget-object v3, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-virtual {v3, p2}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setMeasureState(Lcom/android/systemui/util/animation/TransitionViewState;)V

    .line 321
    iput-boolean v1, p0, Lcom/android/systemui/media/MediaViewController;->animateNextStateChange:Z

    .line 322
    iget-object v1, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez v1, :cond_1

    return-void

    .line 327
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v1

    .line 328
    iget-object v3, p0, Lcom/android/systemui/media/MediaViewController;->tmpState3:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/systemui/media/MediaViewController;->updateViewStateToCarouselSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    .line 330
    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_7

    if-eqz v2, :cond_7

    .line 333
    invoke-interface {v2}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 338
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    .line 339
    invoke-interface {v2}, Lcom/android/systemui/media/MediaHostState;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 338
    invoke-virtual {p2, p1, v0, p3, v1}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getGoneState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/DisappearParameters;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    .line 343
    invoke-interface {v2}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v2

    if-nez v2, :cond_4

    .line 346
    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v0

    sub-float/2addr v1, p3

    .line 348
    iget-object p3, p0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 346
    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getGoneState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/DisappearParameters;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    :goto_1
    move-object v3, p1

    goto :goto_3

    :cond_4
    cmpg-float v0, p3, v1

    if-eqz v0, :cond_7

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 356
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    .line 357
    iget-object v1, p0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 356
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getInterpolatedState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    goto :goto_1

    :cond_7
    :goto_2
    move-object v3, p2

    .line 359
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    iget-wide v6, p0, Lcom/android/systemui/media/MediaViewController;->animationDuration:J

    .line 360
    iget-wide v8, p0, Lcom/android/systemui/media/MediaViewController;->animationDelay:J

    move v4, p4

    .line 359
    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setState(Lcom/android/systemui/util/animation/TransitionViewState;ZZJJ)V

    return-void

    .line 317
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0

    :cond_9
    return-void
.end method

.method public final setCurrentWidth(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/android/systemui/media/MediaViewController;->currentWidth:I

    return-void
.end method

.method public final setSizeChangedListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController;->sizeChangedListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method
