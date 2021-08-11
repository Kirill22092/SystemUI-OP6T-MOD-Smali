.class public Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OpQSWidgetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;,
        Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mListening:Z

.field private final mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->mWidgets:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->mListening:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->mInflater:Landroid/view/LayoutInflater;

    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method static synthetic lambda$removeItem$0(ILcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)Z
    .locals 0

    invoke-static {p1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->access$100(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addItem(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)V
    .locals 6

    invoke-static {p1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->access$100(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;

    invoke-static {v3}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->access$100(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)I

    move-result v4

    invoke-static {p1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->access$100(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-static {p1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->access$200(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)I

    move-result v2

    invoke-static {v3, v2}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->access$202(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;I)I

    invoke-static {p1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->access$300(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->access$302(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;Ljava/lang/String;)Ljava/lang/String;

    move v2, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->mWidgets:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->mWidgets:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->mWidgets:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;

    invoke-static {p0}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->access$100(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;

    iget-object p0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;

    invoke-static {p1, p0}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;->access$000(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    new-instance v0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;

    iget-object v1, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/systemui/R$layout;->op_qs_widget_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;-><init>(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public removeItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->mWidgets:Ljava/util/ArrayList;

    new-instance v1, Lcom/oneplus/systemui/qs/-$$Lambda$OpQSWidgetAdapter$8KQ2rPpS2lkZafqga_VMFt8_CxM;

    invoke-direct {v1, p1}, Lcom/oneplus/systemui/qs/-$$Lambda$OpQSWidgetAdapter$8KQ2rPpS2lkZafqga_VMFt8_CxM;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->mListening:Z

    return-void
.end method
