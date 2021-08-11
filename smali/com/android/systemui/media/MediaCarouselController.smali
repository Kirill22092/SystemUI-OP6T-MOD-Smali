.class public final Lcom/android/systemui/media/MediaCarouselController;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController\n*L\n1#1,497:1\n*E\n"
.end annotation


# instance fields
.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private carouselMeasureHeight:I

.field private carouselMeasureWidth:I

.field private final configListener:Lcom/android/systemui/media/MediaCarouselController$configListener$1;

.field private final context:Landroid/content/Context;

.field private currentCarouselHeight:I

.field private currentCarouselWidth:I

.field private currentEndLocation:I

.field private currentStartLocation:I

.field private currentTransitionProgress:F

.field private currentlyExpanded:Z

.field private currentlyShowingOnlyActive:Z

.field private desiredHostState:Lcom/android/systemui/media/MediaHostState;

.field private desiredLocation:I

.field private isRtl:Z

.field private final mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

.field private final mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

.field private final mediaContent:Landroid/view/ViewGroup;

.field private final mediaControlPanelFactory:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaFrame:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

.field private final mediaPlayers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private needsReordering:Z

.field private final pageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private playersVisible:Z

.field private settingsButton:Landroid/view/View;

.field private final visualStabilityCallback:Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;

.field private final visualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaDataFilter;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljavax/inject/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/media/MediaHostStatesManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/plugins/ActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/media/MediaDataFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/statusbar/policy/ConfigurationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/android/systemui/plugins/FalsingManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/media/MediaDataFilter;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    const-string v8, "context"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "mediaControlPanelFactory"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v8, "visualStabilityManager"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "mediaHostStatesManager"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "activityStarter"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "executor"

    move-object/from16 v12, p6

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "mediaManager"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "configurationController"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "falsingManager"

    move-object/from16 v15, p9

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    iput-object v3, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object v4, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    iput-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    iput v1, v0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    iput v1, v0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaData:Ljava/util/Map;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    new-instance v2, Lcom/android/systemui/media/MediaCarouselController$configListener$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/media/MediaCarouselController$configListener$1;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->configListener:Lcom/android/systemui/media/MediaCarouselController$configListener$1;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateMediaCarousel()Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/R$id;->media_carousel_scroller:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "mediaFrame.requireViewBy\u2026.media_carousel_scroller)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/systemui/media/MediaScrollView;

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    iget-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/R$id;->media_page_indicator:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "mediaFrame.requireViewBy\u2026.id.media_page_indicator)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/systemui/qs/PageIndicator;

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$color;->op_control_text_color_primary_dark:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/PageIndicator;->setColor(I)V

    new-instance v2, Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget-object v10, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    iget-object v11, v0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    new-instance v13, Lcom/android/systemui/media/MediaCarouselController$1;

    invoke-direct {v13, v6}, Lcom/android/systemui/media/MediaCarouselController$1;-><init>(Lcom/android/systemui/media/MediaDataFilter;)V

    new-instance v14, Lcom/android/systemui/media/MediaCarouselController$2;

    invoke-direct {v14, v0}, Lcom/android/systemui/media/MediaCarouselController$2;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/media/MediaCarouselScrollHandler;-><init>(Lcom/android/systemui/media/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/plugins/FalsingManager;)V

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "context.resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const-string v3, "context.resources.configuration"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v2}, Lcom/android/systemui/media/MediaCarouselController;->setRtl(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateSettingsButton()V

    iget-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    sget v3, Lcom/android/systemui/R$id;->media_carousel:I

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "mediaCarousel.requireViewById(R.id.media_carousel)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->configListener:Lcom/android/systemui/media/MediaCarouselController$configListener$1;

    invoke-interface {v7, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/systemui/media/MediaCarouselController$3;

    invoke-direct {v2, v0}, Lcom/android/systemui/media/MediaCarouselController$3;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityCallback:Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;

    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;Z)V

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$4;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$4;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v6, v1}, Lcom/android/systemui/media/MediaDataFilter;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/media/MediaCarouselController$5;

    invoke-direct {v2, v0}, Lcom/android/systemui/media/MediaCarouselController$5;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    new-instance v2, Lcom/android/systemui/media/MediaCarouselController$6;

    invoke-direct {v2, v0}, Lcom/android/systemui/media/MediaCarouselController$6;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/media/MediaHostStatesManager;->addCallback(Lcom/android/systemui/media/MediaHostStatesManager$Callback;)V

    return-void
.end method

.method public static final synthetic access$addOrUpdatePlayer(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaCarouselController;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    return-void
.end method

.method public static final synthetic access$getActivityStarter$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/media/MediaCarouselController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDesiredLocation$p(Lcom/android/systemui/media/MediaCarouselController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    return p0
.end method

.method public static final synthetic access$getMediaCarouselScrollHandler$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/media/MediaCarouselScrollHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    return-object p0
.end method

.method public static final synthetic access$getMediaData$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaData:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getNeedsReordering$p(Lcom/android/systemui/media/MediaCarouselController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    return p0
.end method

.method public static final synthetic access$inflateSettingsButton(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateSettingsButton()V

    return-void
.end method

.method public static final synthetic access$recreatePlayers(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->recreatePlayers()V

    return-void
.end method

.method public static final synthetic access$removePlayer(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$reorderAllPlayers(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers()V

    return-void
.end method

.method public static final synthetic access$setNeedsReordering$p(Lcom/android/systemui/media/MediaCarouselController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    return-void
.end method

.method public static final synthetic access$setRtl$p(Lcom/android/systemui/media/MediaCarouselController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaCarouselController;->setRtl(Z)V

    return-void
.end method

.method public static final synthetic access$updateCarouselDimensions(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updateCarouselDimensions()V

    return-void
.end method

.method public static final synthetic access$updatePageIndicatorLocation(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorLocation()V

    return-void
.end method

.method private final addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    const-string v1, "MediaCarouselController"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new key "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already exists when migrating from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaControlPanel;

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaControlPanel;

    sget-object v4, Lcom/android/systemui/media/PlayerViewHolder;->Companion:Lcom/android/systemui/media/PlayerViewHolder$Companion;

    iget-object v5, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const-string v6, "LayoutInflater.from(context)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/media/PlayerViewHolder$Companion;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/systemui/media/MediaControlPanel;->attach(Lcom/android/systemui/media/PlayerViewHolder;)V

    const-string v4, "existingPlayer"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/media/MediaCarouselController$addOrUpdatePlayer$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/media/MediaCarouselController$addOrUpdatePlayer$2;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/media/MediaViewController;->setSizeChangedListener(Lkotlin/jvm/functions/Function0;)V

    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {p1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaControlPanel;->getView()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p2, p3}, Lcom/android/systemui/media/MediaControlPanel;->bind(Lcom/android/systemui/media/MediaData;)V

    iget-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    invoke-virtual {p2, p1}, Lcom/android/systemui/media/MediaControlPanel;->setListening(Z)V

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/media/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaControlPanel;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaControlPanel;->getView()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v2

    :cond_4
    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaControlPanel;->getView()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v2

    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p2, p3}, Lcom/android/systemui/media/MediaControlPanel;->bind(Lcom/android/systemui/media/MediaData;)V

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaControlPanel;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaControlPanel;->getView()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object p3

    goto :goto_1

    :cond_8
    move-object p3, v2

    :goto_1
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->isReorderingAllowed()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaControlPanel;->getView()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object p3

    goto :goto_2

    :cond_9
    move-object p3, v2

    :goto_2
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaControlPanel;->getView()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v2

    :cond_a
    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3

    :cond_b
    iput-boolean v3, p0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    :cond_c
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicator()V

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-static {p1, v3}, Lcom/android/systemui/util/animation/UniqueObjectHostViewKt;->setRequiresRemeasuring(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-eq p1, p0, :cond_d

    const-string p0, "Size of players list and number of views in carousel are out of sync"

    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method private final inflateMediaCarousel()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->media_carousel:I

    new-instance v2, Lcom/android/systemui/util/animation/UniqueObjectHostView;

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/animation/UniqueObjectHostView;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final inflateSettingsButton()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->media_carousel_settings_button:I

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    const/4 v2, 0x0

    const-string/jumbo v3, "settingsButton"

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onSettingsButtonUpdated(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final maybeResetSettingsCog()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaHostState;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaHostState;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyShowingOnlyActive:Z

    if-ne v3, v1, :cond_2

    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-eqz v3, :cond_3

    if-eq v0, v1, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyShowingOnlyActive:Z

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->resetTranslation(Z)V

    :cond_3
    return-void
.end method

.method public static synthetic onDesiredLocationChanged$default(Lcom/android/systemui/media/MediaCarouselController;ILcom/android/systemui/media/MediaHostState;ZJJILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xc8

    move-wide v6, v0

    goto :goto_0

    :cond_0
    move-wide v6, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    move-wide v8, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p6

    :goto_1
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/media/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/MediaHostState;ZJJ)V

    return-void
.end method

.method private final recreatePlayers()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaData:Ljava/util/Map;

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$recreatePlayers$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaCarouselController$recreatePlayers$1;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private final removePlayer(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/MediaControlPanel;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPrePlayerRemoved(Lcom/android/systemui/media/MediaControlPanel;)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaControlPanel;->getView()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaControlPanel;->onDestroy()V

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicator()V

    :cond_1
    return-void
.end method

.method private final reorderAllPlayers()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaControlPanel;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaControlPanel;->getView()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaControlPanel;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    return-void
.end method

.method private final setCurrentlyExpanded(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaControlPanel;->setListening(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setRtl(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollToStart()V

    :cond_0
    return-void
.end method

.method private final updateCarouselDimensions()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaControlPanel;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v3

    const-string v4, "mediaPlayer.mediaViewController"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getCurrentWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getTranslationX()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getCurrentHeight()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    if-eq v2, v0, :cond_2

    :cond_1
    iput v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    iput v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setCarouselBounds(II)V

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorLocation()V

    :cond_2
    return-void
.end method

.method private final updateCarouselSize()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/util/animation/MeasurementInput;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureWidth:I

    if-eq v0, v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureHeight:I

    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_6

    :cond_3
    iput v0, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureWidth:I

    iput v2, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureHeight:I

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->qs_media_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidthMeasureSpec()I

    move-result v3

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/systemui/util/animation/MeasurementInput;->getHeightMeasureSpec()I

    move-result v4

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v5, v3, v4}, Landroid/widget/HorizontalScrollView;->measure(II)V

    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v1, v1, v0, v4}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setPlayerWidthPlusPadding(I)V

    :cond_6
    return-void
.end method

.method private final updatePageIndicator()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(II)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorAlpha()V

    return-void
.end method

.method private final updatePageIndicatorAlpha()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaHostState;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaHostState;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v2

    :cond_1
    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    if-eqz v1, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v0

    :goto_2
    if-eqz v1, :cond_4

    if-nez v2, :cond_6

    :cond_4
    iget v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    if-nez v1, :cond_5

    sub-float v2, v3, v2

    :cond_5
    const v1, 0x3f733333    # 0.95f

    invoke-static {v1, v3, v0, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v1

    invoke-static {v1, v0, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    invoke-static {v4, v5, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private final updatePageIndicatorLocation()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    :goto_0
    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getContentTranslation()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr p0, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void

    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    iget v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    return-void
.end method


# virtual methods
.method public final getMediaFrame()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final onDesiredLocationChanged(ILcom/android/systemui/media/MediaHostState;ZJJ)V
    .locals 5
    .param p2    # Lcom/android/systemui/media/MediaHostState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_4

    iput p1, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    iput-object p2, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v0

    const/4 v1, 0x0

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaCarouselController;->setCurrentlyExpanded(Z)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaControlPanel;

    if-eqz p3, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v4

    invoke-virtual {v4, p4, p5, p6, p7}, Lcom/android/systemui/media/MediaViewController;->animatePendingStateChange(JJ)V

    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/systemui/media/MediaViewController;->onLocationPreChange(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result p3

    xor-int/2addr p3, v2

    invoke-virtual {p1, p3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setShowsSettingsButton(Z)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getFalsingProtectionNeeded()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setFalsingProtectionNeeded(Z)V

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/systemui/media/MediaCarouselController;->playersVisible:Z

    if-eq p1, p2, :cond_3

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->playersVisible:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    const/4 p2, 0x0

    invoke-static {p1, v1, v2, p2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->resetTranslation$default(Lcom/android/systemui/media/MediaCarouselScrollHandler;ZILjava/lang/Object;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updateCarouselSize()V

    :cond_4
    return-void
.end method

.method public final setCurrentState(IIFZ)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    cmpg-float v0, p3, v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    iput p2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    iput p3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaControlPanel;

    invoke-direct {p0, p2, p4}, Lcom/android/systemui/media/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->maybeResetSettingsCog()V

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorAlpha()V

    :cond_2
    return-void
.end method
