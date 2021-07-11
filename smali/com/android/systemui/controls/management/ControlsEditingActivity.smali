.class public final Lcom/android/systemui/controls/management/ControlsEditingActivity;
.super Lcom/android/systemui/util/LifecycleActivity;
.source "ControlsEditingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsEditingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsEditingActivity.kt\ncom/android/systemui/controls/management/ControlsEditingActivity\n*L\n1#1,221:1\n*E\n"
.end annotation


# static fields
.field private static final EMPTY_TEXT_ID:I

.field private static final SUBTITLE_ID:I


# instance fields
.field private component:Landroid/content/ComponentName;

.field private final controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

.field private final currentUserTracker:Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;

.field private final favoritesModelCallback:Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;

.field private final globalActionsComponent:Lcom/android/systemui/globalactions/GlobalActionsComponent;

.field private model:Lcom/android/systemui/controls/management/FavoritesModel;

.field private saveButton:Landroid/view/View;

.field private structure:Ljava/lang/CharSequence;

.field private subtitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget v0, Lcom/android/systemui/R$string;->controls_favorite_rearrange:I

    sput v0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->SUBTITLE_ID:I

    .line 52
    sget v0, Lcom/android/systemui/R$string;->controls_favorite_removed:I

    sput v0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->EMPTY_TEXT_ID:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/globalactions/GlobalActionsComponent;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/controller/ControlsControllerImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/globalactions/GlobalActionsComponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalActionsComponent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->globalActionsComponent:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    .line 61
    new-instance p1, Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;

    invoke-direct {p1, p0, p2, p2}, Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;-><init>(Lcom/android/systemui/controls/management/ControlsEditingActivity;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;

    .line 157
    new-instance p1, Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->favoritesModelCallback:Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;

    return-void
.end method

.method public static final synthetic access$animateExitAndFinish(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->animateExitAndFinish()V

    return-void
.end method

.method public static final synthetic access$getController$p(Lcom/android/systemui/controls/management/ControlsEditingActivity;)Lcom/android/systemui/controls/controller/ControlsControllerImpl;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    return-object p0
.end method

.method public static final synthetic access$getEMPTY_TEXT_ID$cp()I
    .locals 1

    .line 42
    sget v0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->EMPTY_TEXT_ID:I

    return v0
.end method

.method public static final synthetic access$getGlobalActionsComponent$p(Lcom/android/systemui/controls/management/ControlsEditingActivity;)Lcom/android/systemui/globalactions/GlobalActionsComponent;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->globalActionsComponent:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    return-object p0
.end method

.method public static final synthetic access$getSUBTITLE_ID$cp()I
    .locals 1

    .line 42
    sget v0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->SUBTITLE_ID:I

    return v0
.end method

.method public static final synthetic access$getSaveButton$p(Lcom/android/systemui/controls/management/ControlsEditingActivity;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->saveButton:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "saveButton"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getSubtitle$p(Lcom/android/systemui/controls/management/ControlsEditingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->subtitle:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "subtitle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$saveFavorites(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->saveFavorites()V

    return-void
.end method

.method private final animateExitAndFinish()V
    .locals 2

    .line 106
    sget v0, Lcom/android/systemui/R$id;->controls_management_root:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string v1, "rootView"

    .line 108
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v1, Lcom/android/systemui/controls/management/ControlsEditingActivity$animateExitAndFinish$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity$animateExitAndFinish$1;-><init>(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V

    .line 107
    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/ControlsAnimations;->exitAnimation(Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private final bindButtons()V
    .locals 3

    .line 140
    sget v0, Lcom/android/systemui/R$id;->controls_management_root:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 141
    sget v0, Lcom/android/systemui/R$id;->done:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x0

    .line 142
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    sget v2, Lcom/android/systemui/R$string;->save:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 144
    new-instance v2, Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$$inlined$apply$lambda$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "requireViewById<Button>(\u2026)\n            }\n        }"

    .line 141
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->saveButton:Landroid/view/View;

    return-void
.end method

.method private final bindViews()V
    .locals 6

    .line 118
    sget v0, Lcom/android/systemui/R$layout;->controls_management:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleActivity;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    .line 122
    sget v2, Lcom/android/systemui/R$id;->controls_management_root:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "requireViewById<ViewGrou\u2026controls_management_root)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "intent"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/controls/management/ControlsAnimations;->observerForAnimations(Landroid/view/ViewGroup;Landroid/view/Window;Landroid/content/Intent;)Landroidx/lifecycle/LifecycleObserver;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 128
    sget v0, Lcom/android/systemui/R$id;->stub:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 129
    sget v1, Lcom/android/systemui/R$layout;->controls_management_editing:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 130
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 132
    sget v0, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "requireViewById<TextView>(R.id.title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->structure:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string/jumbo v3, "structure"

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->structure:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    sget v0, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    .line 135
    sget v2, Lcom/android/systemui/controls/management/ControlsEditingActivity;->SUBTITLE_ID:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const-string v2, "requireViewById<TextView\u2026xt(SUBTITLE_ID)\n        }"

    .line 134
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->subtitle:Landroid/widget/TextView;

    return-void

    .line 133
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final saveFavorites()V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 154
    new-instance v1, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->component:Landroid/content/ComponentName;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->structure:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->model:Lcom/android/systemui/controls/management/FavoritesModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getFavorites()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, v2, v4, p0}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 153
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->replaceFavoritesForStructure(Lcom/android/systemui/controls/controller/StructureInfo;)V

    return-void

    :cond_0
    const-string p0, "model"

    .line 154
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string/jumbo p0, "structure"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string p0, "component"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final setUpList()V
    .locals 11

    .line 172
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->component:Landroid/content/ComponentName;

    const-string v2, "component"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->structure:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getFavoritesForStructure(Landroid/content/ComponentName;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 173
    new-instance v1, Lcom/android/systemui/controls/management/FavoritesModel;

    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->component:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->favoritesModelCallback:Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;

    invoke-direct {v1, v4, v0, v2}, Lcom/android/systemui/controls/management/FavoritesModel;-><init>(Landroid/content/ComponentName;Ljava/util/List;Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;)V

    iput-object v1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->model:Lcom/android/systemui/controls/management/FavoritesModel;

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->control_card_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 175
    sget v1, Lcom/android/systemui/R$id;->list:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "recyclerView"

    .line 176
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 177
    new-instance v2, Lcom/android/systemui/controls/management/ControlAdapter;

    invoke-direct {v2, v0}, Lcom/android/systemui/controls/management/ControlAdapter;-><init>(F)V

    .line 178
    new-instance v0, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$$inlined$apply$lambda$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$$inlined$apply$lambda$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 190
    sget v4, Lcom/android/systemui/R$dimen;->controls_card_margin:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 191
    new-instance v10, Lcom/android/systemui/controls/management/MarginItemDecorator;

    invoke-direct {v10, v0, v0}, Lcom/android/systemui/controls/management/MarginItemDecorator;-><init>(II)V

    .line 194
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 195
    new-instance v0, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$$inlined$apply$lambda$2;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x2

    move-object v4, v0

    move-object v7, v2

    move-object v8, v1

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$$inlined$apply$lambda$2;-><init>(Landroid/content/Context;ILcom/android/systemui/controls/management/ControlAdapter;Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/controls/management/MarginItemDecorator;)V

    .line 207
    invoke-virtual {v2}, Lcom/android/systemui/controls/management/ControlAdapter;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 206
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 209
    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->model:Lcom/android/systemui/controls/management/FavoritesModel;

    const-string v4, "model"

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Lcom/android/systemui/controls/management/ControlAdapter;->changeModel(Lcom/android/systemui/controls/management/ControlsModel;)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->model:Lcom/android/systemui/controls/management/FavoritesModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/systemui/controls/management/FavoritesModel;->attachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 213
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->model:Lcom/android/systemui/controls/management/FavoritesModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getItemTouchHelperCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 212
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 173
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string/jumbo p0, "structure"

    .line 172
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->globalActionsComponent:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->handleShowGlobalActionsMenu()V

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->animateExitAndFinish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 73
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    if-eqz p1, :cond_0

    .line 76
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->component:Landroid/content/ComponentName;

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 79
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_structure"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 80
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->structure:Ljava/lang/CharSequence;

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 83
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->bindViews()V

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->bindButtons()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 218
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 89
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onStart()V

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->setUpList()V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onStop()V

    .line 97
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    return-void
.end method
