.class public final Lcom/android/systemui/controls/management/AppAdapter$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/management/AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# instance fields
.field private final favRenderer:Lcom/android/systemui/controls/management/FavoritesRenderer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final favorites:Landroid/widget/TextView;

.field private final icon:Landroid/widget/ImageView;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/controls/management/FavoritesRenderer;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/management/FavoritesRenderer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favRenderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/controls/management/AppAdapter$Holder;->favRenderer:Lcom/android/systemui/controls/management/FavoritesRenderer;

    .line 94
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x1020006

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.requireViewById\u2026droid.internal.R.id.icon)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/AppAdapter$Holder;->icon:Landroid/widget/ImageView;

    .line 95
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x1020016

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.requireViewById\u2026roid.internal.R.id.title)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/AppAdapter$Holder;->title:Landroid/widget/TextView;

    .line 96
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->favorites:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.requireViewById(R.id.favorites)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/AppAdapter$Holder;->favorites:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/ControlsServiceInfo;)V
    .locals 2
    .param p1    # Lcom/android/systemui/controls/ControlsServiceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/controls/management/AppAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/controls/management/AppAdapter$Holder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/controls/management/AppAdapter$Holder;->favRenderer:Lcom/android/systemui/controls/management/FavoritesRenderer;

    iget-object p1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    const-string v1, "data.componentName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/management/FavoritesRenderer;->renderFavoritesForComponent(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/android/systemui/controls/management/AppAdapter$Holder;->favorites:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p0, p0, Lcom/android/systemui/controls/management/AppAdapter$Holder;->favorites:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
