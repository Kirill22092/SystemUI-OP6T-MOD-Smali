.class public final Lcom/android/systemui/controls/management/AppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/AppAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/controls/management/AppAdapter$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/android/systemui/controls/management/AppAdapter$callback$1;

.field private final favoritesRenderer:Lcom/android/systemui/controls/management/FavoritesRenderer;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private listOfServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final onAppSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/ComponentName;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/FavoritesRenderer;Landroid/content/res/Resources;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/controls/management/ControlsListingController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/controls/management/FavoritesRenderer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/lifecycle/Lifecycle;",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            "Landroid/view/LayoutInflater;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/ComponentName;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/android/systemui/controls/management/FavoritesRenderer;",
            "Landroid/content/res/Resources;",
            ")V"
        }
    .end annotation

    const-string v0, "backgroundExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsListingController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInflater"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAppSelected"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoritesRenderer"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resources"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/controls/management/AppAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iput-object p6, p0, Lcom/android/systemui/controls/management/AppAdapter;->onAppSelected:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/android/systemui/controls/management/AppAdapter;->favoritesRenderer:Lcom/android/systemui/controls/management/FavoritesRenderer;

    iput-object p8, p0, Lcom/android/systemui/controls/management/AppAdapter;->resources:Landroid/content/res/Resources;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/controls/management/AppAdapter;->listOfServices:Ljava/util/List;

    new-instance p5, Lcom/android/systemui/controls/management/AppAdapter$callback$1;

    invoke-direct {p5, p0, p1, p2}, Lcom/android/systemui/controls/management/AppAdapter$callback$1;-><init>(Lcom/android/systemui/controls/management/AppAdapter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iput-object p5, p0, Lcom/android/systemui/controls/management/AppAdapter;->callback:Lcom/android/systemui/controls/management/AppAdapter$callback$1;

    invoke-interface {p4, p3, p5}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getListOfServices$p(Lcom/android/systemui/controls/management/AppAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/AppAdapter;->listOfServices:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getOnAppSelected$p(Lcom/android/systemui/controls/management/AppAdapter;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/AppAdapter;->onAppSelected:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getResources$p(Lcom/android/systemui/controls/management/AppAdapter;)Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/AppAdapter;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method public static final synthetic access$setListOfServices$p(Lcom/android/systemui/controls/management/AppAdapter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/AppAdapter;->listOfServices:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/AppAdapter;->listOfServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/controls/management/AppAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/AppAdapter;->onBindViewHolder(Lcom/android/systemui/controls/management/AppAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/controls/management/AppAdapter$Holder;I)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/AppAdapter$Holder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/AppAdapter;->listOfServices:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ControlsServiceInfo;

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/management/AppAdapter$Holder;->bindData(Lcom/android/systemui/controls/ControlsServiceInfo;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/controls/management/AppAdapter$onBindViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/controls/management/AppAdapter$onBindViewHolder$1;-><init>(Lcom/android/systemui/controls/management/AppAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/AppAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/controls/management/AppAdapter$Holder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/controls/management/AppAdapter$Holder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/systemui/controls/management/AppAdapter$Holder;

    iget-object v0, p0, Lcom/android/systemui/controls/management/AppAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->controls_app_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "layoutInflater.inflate(R\u2026_app_item, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/AppAdapter;->favoritesRenderer:Lcom/android/systemui/controls/management/FavoritesRenderer;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/controls/management/AppAdapter$Holder;-><init>(Landroid/view/View;Lcom/android/systemui/controls/management/FavoritesRenderer;)V

    return-object p2
.end method
