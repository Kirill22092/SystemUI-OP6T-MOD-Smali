.class public final Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StructureAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/management/StructureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StructureHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStructureAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StructureAdapter.kt\ncom/android/systemui/controls/management/StructureAdapter$StructureHolder\n*L\n1#1,73:1\n*E\n"
.end annotation


# instance fields
.field private final controlAdapter:Lcom/android/systemui/controls/management/ControlAdapter;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->listAll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.requireViewById\u2026cyclerView>(R.id.listAll)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "itemView.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->control_card_elevation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    new-instance v0, Lcom/android/systemui/controls/management/ControlAdapter;

    invoke-direct {v0, p1}, Lcom/android/systemui/controls/management/ControlAdapter;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;->controlAdapter:Lcom/android/systemui/controls/management/ControlAdapter;

    invoke-direct {p0}, Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;->setUpRecyclerView()V

    return-void
.end method

.method private final setUpRecyclerView()V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->controls_card_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Lcom/android/systemui/controls/management/MarginItemDecorator;

    invoke-direct {v1, v0, v0}, Lcom/android/systemui/controls/management/MarginItemDecorator;-><init>(II)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;->controlAdapter:Lcom/android/systemui/controls/management/ControlAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;->controlAdapter:Lcom/android/systemui/controls/management/ControlAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlAdapter;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/android/systemui/controls/management/ControlsModel;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/ControlsModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;->controlAdapter:Lcom/android/systemui/controls/management/ControlAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/ControlAdapter;->changeModel(Lcom/android/systemui/controls/management/ControlsModel;)V

    return-void
.end method
