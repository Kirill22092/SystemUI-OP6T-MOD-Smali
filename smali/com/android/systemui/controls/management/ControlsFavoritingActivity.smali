.class public final Lcom/android/systemui/controls/management/ControlsFavoritingActivity;
.super Lcom/android/systemui/util/LifecycleActivity;
.source "ControlsFavoritingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsFavoritingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsFavoritingActivity.kt\ncom/android/systemui/controls/management/ControlsFavoritingActivity\n*L\n1#1,385:1\n*E\n"
.end annotation


# instance fields
.field private appName:Ljava/lang/CharSequence;

.field private cancelLoadRunnable:Ljava/lang/Runnable;

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/controls/management/StructureContainer;",
            ">;"
        }
    .end annotation
.end field

.field private component:Landroid/content/ComponentName;

.field private final controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

.field private final controlsModelCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;

.field private final currentUserTracker:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$currentUserTracker$1;

.field private doneButton:Landroid/view/View;

.field private final executor:Ljava/util/concurrent/Executor;

.field private fromProviderSelector:Z

.field private final globalActionsComponent:Lcom/android/systemui/globalactions/GlobalActionsComponent;

.field private isPagerLoaded:Z

.field private listOfStructures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/StructureContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final listingCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;

.field private final listingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field private mTooltipManager:Lcom/android/systemui/controls/TooltipManager;

.field private otherAppsButton:Landroid/view/View;

.field private pageIndicator:Lcom/android/systemui/controls/management/ManagementPageIndicator;

.field private statusText:Landroid/widget/TextView;

.field private structureExtra:Ljava/lang/CharSequence;

.field private structurePager:Landroidx/viewpager2/widget/ViewPager2;

.field private subtitleView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/controller/ControlsControllerImpl;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/globalactions/GlobalActionsComponent;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/controller/ControlsControllerImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/management/ControlsListingController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/globalactions/GlobalActionsComponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listingController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalActionsComponent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    iput-object p5, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->globalActionsComponent:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    .line 87
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listOfStructures:Ljava/util/List;

    .line 93
    new-instance p1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$currentUserTracker$1;

    invoke-direct {p1, p0, p4, p4}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$currentUserTracker$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$currentUserTracker$1;

    .line 104
    new-instance p1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listingCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;

    .line 135
    new-instance p1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->controlsModelCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;

    return-void
.end method

.method public static final synthetic access$animateExitAndFinish(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->animateExitAndFinish()V

    return-void
.end method

.method public static final synthetic access$getAppName$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/lang/CharSequence;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic access$getComparator$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/util/Comparator;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->comparator:Ljava/util/Comparator;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "comparator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getComponent$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/content/ComponentName;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static final synthetic access$getController$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/controller/ControlsControllerImpl;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    return-object p0
.end method

.method public static final synthetic access$getControlsModelCallback$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->controlsModelCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;

    return-object p0
.end method

.method public static final synthetic access$getDoneButton$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->doneButton:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "doneButton"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getExecutor$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$getGlobalActionsComponent$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/globalactions/GlobalActionsComponent;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->globalActionsComponent:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    return-object p0
.end method

.method public static final synthetic access$getListOfStructures$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listOfStructures:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMTooltipManager$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/TooltipManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->mTooltipManager:Lcom/android/systemui/controls/TooltipManager;

    return-object p0
.end method

.method public static final synthetic access$getOtherAppsButton$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->otherAppsButton:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "otherAppsButton"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getPageIndicator$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/management/ManagementPageIndicator;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->pageIndicator:Lcom/android/systemui/controls/management/ManagementPageIndicator;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "pageIndicator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getStatusText$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->statusText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "statusText"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getStructureExtra$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/lang/CharSequence;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structureExtra:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic access$getStructurePager$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structurePager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "structurePager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getSubtitleView$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->subtitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "subtitleView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getTitleView$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->titleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "titleView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setCancelLoadRunnable$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->cancelLoadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setListOfStructures$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;Ljava/util/List;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listOfStructures:Ljava/util/List;

    return-void
.end method

.method private final animateExitAndFinish()V
    .locals 2

    .line 291
    sget v0, Lcom/android/systemui/R$id;->controls_management_root:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string v1, "rootView"

    .line 293
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    new-instance v1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$animateExitAndFinish$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$animateExitAndFinish$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    .line 292
    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/ControlsAnimations;->exitAnimation(Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p0

    .line 299
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private final bindButtons()V
    .locals 4

    .line 303
    sget v0, Lcom/android/systemui/R$id;->other_apps:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    .line 304
    new-instance v2, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$1;

    invoke-direct {v2, v1, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$1;-><init>(Landroid/widget/Button;Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "requireViewById<Button>(\u2026)\n            }\n        }"

    .line 303
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->otherAppsButton:Landroid/view/View;

    .line 322
    sget v0, Lcom/android/systemui/R$id;->done:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Button;

    const/4 v3, 0x0

    .line 323
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 324
    new-instance v3, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$2;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->doneButton:Landroid/view/View;

    return-void
.end method

.method private final bindViews()V
    .locals 9

    .line 235
    sget v0, Lcom/android/systemui/R$layout;->controls_management:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleActivity;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 238
    sget-object v1, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    .line 239
    sget v2, Lcom/android/systemui/R$id;->controls_management_root:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "requireViewById<ViewGrou\u2026controls_management_root)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "intent"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/controls/management/ControlsAnimations;->observerForAnimations(Landroid/view/ViewGroup;Landroid/view/Window;Landroid/content/Intent;)Landroidx/lifecycle/LifecycleObserver;

    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 245
    sget v0, Lcom/android/systemui/R$id;->stub:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 246
    sget v1, Lcom/android/systemui/R$layout;->controls_management_favorites:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 247
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 250
    sget v0, Lcom/android/systemui/R$id;->status_message:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "requireViewById(R.id.status_message)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->statusText:Landroid/widget/TextView;

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->shouldShowTooltip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 252
    new-instance v0, Lcom/android/systemui/controls/TooltipManager;

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->statusText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v2, "statusText.context"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v4, "ControlsStructureSwipeTooltipCount"

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/controls/TooltipManager;-><init>(Landroid/content/Context;Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->mTooltipManager:Lcom/android/systemui/controls/TooltipManager;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/android/systemui/controls/TooltipManager;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 256
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x33

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 254
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "statusText"

    .line 252
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_2
    :goto_1
    sget v0, Lcom/android/systemui/R$id;->structure_page_indicator:I

    .line 263
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    .line 264
    move-object v2, v0

    check-cast v2, Lcom/android/systemui/controls/management/ManagementPageIndicator;

    .line 265
    new-instance v3, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindViews$$inlined$apply$lambda$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindViews$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/controls/management/ManagementPageIndicator;->setVisibilityListener(Lkotlin/jvm/functions/Function1;)V

    const-string v3, "requireViewById<Manageme\u2026}\n            }\n        }"

    .line 264
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->pageIndicator:Lcom/android/systemui/controls/management/ManagementPageIndicator;

    .line 272
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structureExtra:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->controls_favorite_default_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 274
    :goto_2
    sget v2, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    .line 275
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "requireViewById<TextView\u2026   text = title\n        }"

    .line 274
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->titleView:Landroid/widget/TextView;

    .line 277
    sget v0, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    .line 278
    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->controls_favorite_subtitle:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "requireViewById<TextView\u2026orite_subtitle)\n        }"

    .line 277
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->subtitleView:Landroid/widget/TextView;

    .line 280
    sget v0, Lcom/android/systemui/R$id;->structure_pager:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "requireViewById<ViewPager2>(R.id.structure_pager)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structurePager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_5

    .line 281
    new-instance v1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindViews$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindViews$5;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 287
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->bindButtons()V

    return-void

    :cond_5
    const-string/jumbo p0, "structurePager"

    .line 281
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final loadControls()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->statusText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040439

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 145
    sget v2, Lcom/android/systemui/R$string;->controls_favorite_other_zone_header:I

    .line 144
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 146
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    new-instance v3, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;

    invoke-direct {v3, v1, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$1;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    .line 204
    new-instance v1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$2;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    .line 146
    invoke-virtual {v2, v0, v3, v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->loadForComponent(Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "statusText"

    .line 143
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private final setUpPager()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structurePager:Landroidx/viewpager2/widget/ViewPager2;

    const-string/jumbo v1, "structurePager"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->pageIndicator:Lcom/android/systemui/controls/management/ManagementPageIndicator;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structurePager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    .line 212
    new-instance v1, Lcom/android/systemui/controls/management/StructureAdapter;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/controls/management/StructureAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 213
    new-instance v1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void

    .line 211
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p0, "pageIndicator"

    .line 210
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final shouldShowTooltip()Z
    .locals 2

    .line 380
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "ControlsStructureSwipeTooltipCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->fromProviderSelector:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->globalActionsComponent:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->handleShowGlobalActionsMenu()V

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->animateExitAndFinish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 371
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->mTooltipManager:Lcom/android/systemui/controls/TooltipManager;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/TooltipManager;->hide(Z)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 123
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const-string v0, "resources.configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    const-string v1, "collator"

    .line 126
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$onCreate$$inlined$compareBy$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$onCreate$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->comparator:Ljava/util/Comparator;

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_app_label"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_structure"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structureExtra:Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_from_provider_selector"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->fromProviderSelector:Z

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->bindViews()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->cancelLoadRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 376
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 339
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onPause()V

    .line 340
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->mTooltipManager:Lcom/android/systemui/controls/TooltipManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/TooltipManager;->hide(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 351
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onResume()V

    .line 355
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->isPagerLoaded:Z

    if-nez v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->setUpPager()V

    .line 357
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->loadControls()V

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->isPagerLoaded:Z

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 344
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onStart()V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listingCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 347
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$currentUserTracker$1;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 363
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onStop()V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listingCallback:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 366
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$currentUserTracker$1;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    return-void
.end method
