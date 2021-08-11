.class public final Lcom/android/systemui/controls/management/StructureAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StructureAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/StructureContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/StructureContainer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/StructureAdapter;->models:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/StructureAdapter;->models:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/StructureAdapter;->onBindViewHolder(Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;I)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/StructureAdapter;->models:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/StructureContainer;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/StructureContainer;->getModel()Lcom/android/systemui/controls/management/ControlsModel;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;->bind(Lcom/android/systemui/controls/management/ControlsModel;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/StructureAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;

    sget v0, Lcom/android/systemui/R$layout;->controls_structure_page:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "layoutInflater.inflate(R\u2026ture_page, parent, false)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/management/StructureAdapter$StructureHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
