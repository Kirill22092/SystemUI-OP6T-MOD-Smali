.class public final Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;
.super Lcom/android/systemui/util/LifecycleActivity;
.source "ControlsProviderSelectorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsProviderSelectorActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsProviderSelectorActivity.kt\ncom/android/systemui/controls/management/ControlsProviderSelectorActivity\n*L\n1#1,178:1\n*E\n"
.end annotation


# instance fields
.field private final backExecutor:Ljava/util/concurrent/Executor;

.field private final controlsController:Lcom/android/systemui/controls/controller/ControlsController;

.field private final currentUserTracker:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final globalActionsComponent:Lcom/android/systemui/globalactions/GlobalActionsComponent;

.field private final listingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/globalactions/GlobalActionsComponent;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/management/ControlsListingController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/controls/controller/ControlsController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/globalactions/GlobalActionsComponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listingController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalActionsComponent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->backExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    iput-object p4, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    iput-object p5, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->globalActionsComponent:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    .line 60
    new-instance p1, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;

    invoke-direct {p1, p0, p6, p6}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;

    return-void
.end method

.method public static final synthetic access$getListingController$p(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)Lcom/android/systemui/controls/management/ControlsListingController;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    return-object p0
.end method

.method public static final synthetic access$getRecyclerView$p(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "recyclerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final animateExitAndFinish()V
    .locals 2

    .line 167
    sget v0, Lcom/android/systemui/R$id;->controls_management_root:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string v1, "rootView"

    .line 169
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$animateExitAndFinish$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$animateExitAndFinish$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V

    .line 168
    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/ControlsAnimations;->exitAnimation(Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public final launchFavoritingActivity(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 147
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$launchFavoritingActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$launchFavoritingActivity$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->globalActionsComponent:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->handleShowGlobalActionsMenu()V

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->animateExitAndFinish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 72
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget p1, Lcom/android/systemui/R$layout;->controls_management:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleActivity;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    .line 77
    sget-object v0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    .line 78
    sget v1, Lcom/android/systemui/R$id;->controls_management_root:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById<ViewGrou\u2026controls_management_root)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "intent"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/controls/management/ControlsAnimations;->observerForAnimations(Landroid/view/ViewGroup;Landroid/view/Window;Landroid/content/Intent;)Landroidx/lifecycle/LifecycleObserver;

    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 84
    sget p1, Lcom/android/systemui/R$id;->stub:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 85
    sget v0, Lcom/android/systemui/R$layout;->controls_management_apps:I

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 86
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 89
    sget p1, Lcom/android/systemui/R$id;->list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "requireViewById(R.id.list)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 90
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 92
    sget p1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 93
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->controls_providers_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    sget p1, Lcom/android/systemui/R$id;->other_apps:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    const/high16 v0, 0x1040000

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 99
    new-instance v0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onCreate$$inlined$apply$lambda$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onCreate$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget p1, Lcom/android/systemui/R$id;->done:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    const-string p1, "requireViewById<View>(R.id.done)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const-string p0, "recyclerView"

    .line 90
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method protected onDestroy()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 163
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 13

    .line 112
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onStart()V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const-string v2, "recyclerView"

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 116
    new-instance v1, Lcom/android/systemui/controls/management/AppAdapter;

    .line 117
    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->backExecutor:Ljava/util/concurrent/Executor;

    .line 118
    iget-object v5, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleActivity;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    .line 120
    iget-object v7, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 121
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const-string v2, "LayoutInflater.from(this)"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v9, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V

    .line 123
    new-instance v10, Lcom/android/systemui/controls/management/FavoritesRenderer;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$2;

    iget-object v12, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    invoke-direct {v11, v12}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$2;-><init>(Lcom/android/systemui/controls/controller/ControlsController;)V

    invoke-direct {v10, v2, v11}, Lcom/android/systemui/controls/management/FavoritesRenderer;-><init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    .line 116
    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/controls/management/AppAdapter;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/FavoritesRenderer;Landroid/content/res/Resources;)V

    .line 125
    new-instance v2, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$$inlined$apply$lambda$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 124
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected onStop()V
    .locals 0

    .line 138
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onStop()V

    .line 139
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    return-void
.end method
