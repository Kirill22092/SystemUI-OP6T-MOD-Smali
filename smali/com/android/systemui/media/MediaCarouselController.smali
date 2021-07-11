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

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    iput-object v3, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object v4, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    iput-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, -0x1

    .line 72
    iput v1, v0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    .line 79
    iput v1, v0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    .line 86
    iput v1, v0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 91
    iput v1, v0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    .line 106
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    .line 108
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaData:Ljava/util/Map;

    const/4 v1, 0x1

    .line 122
    iput-boolean v1, v0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    .line 131
    new-instance v2, Lcom/android/systemui/media/MediaCarouselController$configListener$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/media/MediaCarouselController$configListener$1;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->configListener:Lcom/android/systemui/media/MediaCarouselController$configListener$1;

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateMediaCarousel()Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 149
    sget v3, Lcom/android/systemui/R$id;->media_carousel_scroller:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "mediaFrame.requireViewBy\u2026.media_carousel_scroller)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/systemui/media/MediaScrollView;

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    .line 150
    iget-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/R$id;->media_page_indicator:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "mediaFrame.requireViewBy\u2026.id.media_page_indicator)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/systemui/qs/PageIndicator;

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 152
    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$color;->op_control_text_color_primary_dark:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/PageIndicator;->setColor(I)V

    .line 154
    new-instance v2, Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget-object v10, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    iget-object v11, v0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 155
    new-instance v13, Lcom/android/systemui/media/MediaCarouselController$1;

    invoke-direct {v13, v6}, Lcom/android/systemui/media/MediaCarouselController$1;-><init>(Lcom/android/systemui/media/MediaDataFilter;)V

    new-instance v14, Lcom/android/systemui/media/MediaCarouselController$2;

    invoke-direct {v14, v0}, Lcom/android/systemui/media/MediaCarouselController$2;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    move-object v9, v2

    .line 154
    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/media/MediaCarouselScrollHandler;-><init>(Lcom/android/systemui/media/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/plugins/FalsingManager;)V

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    .line 157
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

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateSettingsButton()V

    .line 159
    iget-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    sget v3, Lcom/android/systemui/R$id;->media_carousel:I

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "mediaCarousel.requireViewById(R.id.media_carousel)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    .line 160
    iget-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->configListener:Lcom/android/systemui/media/MediaCarouselController$configListener$1;

    invoke-interface {v7, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 161
    new-instance v2, Lcom/android/systemui/media/MediaCarouselController$3;

    invoke-direct {v2, v0}, Lcom/android/systemui/media/MediaCarouselController$3;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityCallback:Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;

    .line 169
    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;Z)V

    .line 171
    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$4;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$4;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v6, v1}, Lcom/android/systemui/media/MediaDataFilter;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z

    .line 190
    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/media/MediaCarouselController$5;

    invoke-direct {v2, v0}, Lcom/android/systemui/media/MediaCarouselController$5;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 195
    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    new-instance v2, Lcom/android/systemui/media/MediaCarouselController$6;

    invoke-direct {v2, v0}, Lcom/android/systemui/media/MediaCarouselController$6;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/media/MediaHostStatesManager;->addCallback(Lcom/android/systemui/media/MediaHostStatesManager$Callback;)V

    return-void
.end method

.method public static final synthetic access$addOrUpdatePlayer(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaCarouselController;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    return-void
.end method

.method public static final synthetic access$getActivityStarter$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/media/MediaCarouselController;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDesiredLocation$p(Lcom/android/systemui/media/MediaCarouselController;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    return p0
.end method

.method public static final synthetic access$getMediaCarouselScrollHandler$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/media/MediaCarouselScrollHandler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    return-object p0
.end method

.method public static final synthetic access$getMediaData$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Map;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaData:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getNeedsReordering$p(Lcom/android/systemui/media/MediaCarouselController;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    return p0
.end method

.method public static final synthetic access$inflateSettingsButton(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateSettingsButton()V

    return-void
.end method

.method public static final synthetic access$recreatePlayers(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->recreatePlayers()V

    return-void
.end method

.method public static final synthetic access$removePlayer(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$reorderAllPlayers(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers()V

    return-void
.end method

.method public static final synthetic access$setNeedsReordering$p(Lcom/android/systemui/media/MediaCarouselController;Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    return-void
.end method

.method public static final synthetic access$setRtl$p(Lcom/android/systemui/media/MediaCarouselController;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaCarouselController;->setRtl(Z)V

    return-void
.end method

.method public static final synthetic access$updateCarouselDimensions(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updateCarouselDimensions()V

    return-void
.end method

.method public static final synthetic access$updatePageIndicatorLocation(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorLocation()V

    return-void
.end method

.method private final addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 7

    .line 241
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    const-string v1, "MediaCarouselController"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    .line 244
    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    if-eqz v0, :cond_2

    .line 245
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

    .line 244
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 243
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 248
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaControlPanel;

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_7

    .line 250
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaControlPanel;

    .line 251
    sget-object v4, Lcom/android/systemui/media/PlayerViewHolder;->Companion:Lcom/android/systemui/media/PlayerViewHolder$Companion;

    iget-object v5, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const-string v6, "LayoutInflater.from(context)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v6, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    .line 251
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/media/PlayerViewHolder$Companion;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/systemui/media/MediaControlPanel;->attach(Lcom/android/systemui/media/PlayerViewHolder;)V

    const-string v4, "existingPlayer"

    .line 253
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/media/MediaCarouselController$addOrUpdatePlayer$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/media/MediaCarouselController$addOrUpdatePlayer$2;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/media/MediaViewController;->setSizeChangedListener(Lkotlin/jvm/functions/Function0;)V

    .line 254
    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {p1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 257
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaControlPanel;->getView()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    :cond_3
    invoke-virtual {p2, p3}, Lcom/android/systemui/media/MediaControlPanel;->bind(Lcom/android/systemui/media/MediaData;)V

    .line 259
    iget-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    invoke-virtual {p2, p1}, Lcom/android/systemui/media/MediaControlPanel;->setListening(Z)V

    .line 260
    invoke-direct {p0, p2, v3}, Lcom/android/systemui/media/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V

    .line 261
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaControlPanel;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 262
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaControlPanel;->getView()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v2

    :cond_4
    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3

    .line 264
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

    .line 267
    :cond_7
    invoke-virtual {p2, p3}, Lcom/android/systemui/media/MediaControlPanel;->bind(Lcom/android/systemui/media/MediaData;)V

    .line 269
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

    .line 270
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->isReorderingAllowed()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 271
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

    .line 272
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaControlPanel;->getView()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v2

    :cond_a
    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3

    .line 274
    :cond_b
    iput-boolean v3, p0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    .line 278
    :cond_c
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicator()V

    .line 279
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    .line 280
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-static {p1, v3}, Lcom/android/systemui/util/animation/UniqueObjectHostViewKt;->setRequiresRemeasuring(Landroid/view/View;Z)V

    .line 283
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-eq p1, p0, :cond_d

    const-string p0, "Size of players list and number of views in carousel are out of sync"

    .line 284
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method private final inflateMediaCarousel()Landroid/view/ViewGroup;
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->media_carousel:I

    .line 220
    new-instance v2, Lcom/android/systemui/util/animation/UniqueObjectHostView;

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/animation/UniqueObjectHostView;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 219
    invoke-virtual {v0, v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x3

    .line 224
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-object p0

    .line 219
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final inflateSettingsButton()V
    .locals 5

    .line 205
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->media_carousel_settings_button:I

    .line 206
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 205
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 207
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    const/4 v2, 0x0

    const-string/jumbo v3, "settingsButton"

    if-eqz v1, :cond_1

    .line 208
    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    .line 211
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 212
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onSettingsButtonUpdated(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 211
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final maybeResetSettingsCog()V
    .locals 5

    .line 409
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    .line 410
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

    .line 412
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

    .line 416
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

    .line 419
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyShowingOnlyActive:Z

    .line 420
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

    .line 447
    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/media/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/MediaHostState;ZJJ)V

    return-void
.end method

.method private final recreatePlayers()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaData:Ljava/util/Map;

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$recreatePlayers$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaCarouselController$recreatePlayers$1;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private final removePlayer(Ljava/lang/String;)V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/MediaControlPanel;

    if-eqz p1, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPrePlayerRemoved(Lcom/android/systemui/media/MediaControlPanel;)V

    .line 292
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

    .line 293
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaControlPanel;->onDestroy()V

    .line 294
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicator()V

    :cond_1
    return-void
.end method

.method private final reorderAllPlayers()V
    .locals 4

    .line 229
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

    .line 230
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaControlPanel;->getView()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 231
    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaControlPanel;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 233
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    return-void
.end method

.method private final setCurrentlyExpanded(Z)V
    .locals 2

    .line 124
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    if-eq v0, p1, :cond_0

    .line 125
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    .line 126
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

    .line 127
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaControlPanel;->setListening(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setRtl(Z)V
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    if-eq p1, v0, :cond_0

    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    .line 118
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 119
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollToStart()V

    :cond_0
    return-void
.end method

.method private final updateCarouselDimensions()V
    .locals 6

    .line 392
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

    .line 393
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v3

    const-string v4, "mediaPlayer.mediaViewController"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getCurrentWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getTranslationX()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 397
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getCurrentHeight()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 399
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    if-eq v2, v0, :cond_2

    .line 400
    :cond_1
    iput v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    .line 401
    iput v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    .line 402
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setCarouselBounds(II)V

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorLocation()V

    :cond_2
    return-void
.end method

.method private final updateCarouselSize()V
    .locals 6

    .line 479
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

    .line 480
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

    .line 482
    :goto_1
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureWidth:I

    if-eq v0, v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureHeight:I

    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_6

    .line 483
    :cond_3
    iput v0, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureWidth:I

    .line 484
    iput v2, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureHeight:I

    .line 486
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->qs_media_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 488
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

    .line 489
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

    .line 490
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v5, v3, v4}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 491
    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v1, v1, v0, v4}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    .line 493
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setPlayerWidthPlusPadding(I)V

    :cond_6
    return-void
.end method

.method private final updatePageIndicator()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(II)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorAlpha()V

    return-void
.end method

.method private final updatePageIndicatorAlpha()V
    .locals 6

    .line 352
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    .line 353
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

    .line 354
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

    .line 359
    :cond_4
    iget v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    if-nez v1, :cond_5

    sub-float v2, v3, v2

    :cond_5
    const v1, 0x3f733333    # 0.95f

    .line 365
    invoke-static {v1, v3, v0, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v1

    .line 364
    invoke-static {v1, v0, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 368
    invoke-static {v4, v5, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    .line 370
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private final updatePageIndicatorLocation()V
    .locals 3

    .line 375
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    goto :goto_0

    .line 378
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    :goto_0
    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 380
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getContentTranslation()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 383
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 382
    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr p0, v2

    .line 383
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void

    .line 381
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V
    .locals 2

    .line 425
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object p1

    .line 426
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    .line 427
    iget v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    .line 428
    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    .line 425
    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    return-void
.end method


# virtual methods
.method public final getMediaFrame()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 105
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

    .line 451
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    .line 452
    iput-object p2, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    .line 453
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

    .line 454
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

    .line 456
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v4

    invoke-virtual {v4, p4, p5, p6, p7}, Lcom/android/systemui/media/MediaViewController;->animatePendingStateChange(JJ)V

    .line 460
    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/systemui/media/MediaViewController;->onLocationPreChange(I)V

    goto :goto_1

    .line 462
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result p3

    xor-int/2addr p3, v2

    invoke-virtual {p1, p3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setShowsSettingsButton(Z)V

    .line 463
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getFalsingProtectionNeeded()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setFalsingProtectionNeeded(Z)V

    .line 464
    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result p1

    .line 465
    iget-boolean p2, p0, Lcom/android/systemui/media/MediaCarouselController;->playersVisible:Z

    if-eq p1, p2, :cond_3

    .line 466
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->playersVisible:Z

    if-eqz p1, :cond_3

    .line 468
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    const/4 p2, 0x0

    invoke-static {p1, v1, v2, p2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->resetTranslation$default(Lcom/android/systemui/media/MediaCarouselScrollHandler;ZILjava/lang/Object;)V

    .line 471
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updateCarouselSize()V

    :cond_4
    return-void
.end method

.method public final setCurrentState(IIFZ)V
    .locals 1

    .line 338
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    cmpg-float v0, p3, v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_2

    .line 340
    :cond_0
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    .line 341
    iput p2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    .line 342
    iput p3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    .line 343
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

    .line 344
    invoke-direct {p0, p2, p4}, Lcom/android/systemui/media/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V

    goto :goto_0

    .line 346
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->maybeResetSettingsCog()V

    .line 347
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorAlpha()V

    :cond_2
    return-void
.end method
