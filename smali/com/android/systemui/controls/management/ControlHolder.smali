.class public final Lcom/android/systemui/controls/management/ControlHolder;
.super Lcom/android/systemui/controls/management/Holder;
.source "ControlAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlAdapter.kt\ncom/android/systemui/controls/management/ControlHolder\n*L\n1#1,406:1\n*E\n"
.end annotation


# instance fields
.field private final accessibilityDelegate:Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;

.field private final favorite:Landroid/widget/CheckBox;

.field private final favoriteCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final favoriteStateDescription:Ljava/lang/String;

.field private final icon:Landroid/widget/ImageView;

.field private final moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final notFavoriteStateDescription:Ljava/lang/String;

.field private final removed:Landroid/widget/TextView;

.field private final subtitle:Landroid/widget/TextView;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoriteCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/Holder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlHolder;->moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;

    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlHolder;->favoriteCallback:Lkotlin/jvm/functions/Function2;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$string;->accessibility_control_favorite:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlHolder;->favoriteStateDescription:Ljava/lang/String;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->accessibility_control_not_favorite:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlHolder;->notFavoriteStateDescription:Ljava/lang/String;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.requireViewById(R.id.icon)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlHolder;->icon:Landroid/widget/ImageView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.requireViewById(R.id.title)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlHolder;->title:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.requireViewById(R.id.subtitle)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlHolder;->subtitle:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.requireViewById(R.id.status)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlHolder;->removed:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->favorite:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/widget/CheckBox;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setVisibility(I)V

    const-string p3, "itemView.requireViewById\u2026lity = View.VISIBLE\n    }"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlHolder;->favorite:Landroid/widget/CheckBox;

    new-instance p1, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;

    new-instance p2, Lcom/android/systemui/controls/management/ControlHolder$accessibilityDelegate$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/management/ControlHolder$accessibilityDelegate$1;-><init>(Lcom/android/systemui/controls/management/ControlHolder;)V

    new-instance p3, Lcom/android/systemui/controls/management/ControlHolder$accessibilityDelegate$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/controls/management/ControlHolder$accessibilityDelegate$2;-><init>(Lcom/android/systemui/controls/management/ControlHolder;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlHolder;->moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;

    invoke-direct {p1, p2, p3, v0}, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlHolder;->accessibilityDelegate:Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static final synthetic access$getFavorite$p(Lcom/android/systemui/controls/management/ControlHolder;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlHolder;->favorite:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static final synthetic access$stateDescription(Lcom/android/systemui/controls/management/ControlHolder;Z)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/ControlHolder;->stateDescription(Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private final applyRenderInfo(Lcom/android/systemui/controls/ui/RenderInfo;Lcom/android/systemui/controls/ControlInterface;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/RenderInfo;->getForeground()I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/systemui/controls/ControlInterface;->getCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/RenderInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p2}, Lcom/android/systemui/controls/ControlInterface;->getDeviceType()I

    move-result p1

    const/16 p2, 0x34

    if-eq p1, p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final getRenderInfo(Landroid/content/ComponentName;I)Lcom/android/systemui/controls/ui/RenderInfo;
    .locals 7

    sget-object v0, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "itemView.context"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->lookup$default(Lcom/android/systemui/controls/ui/RenderInfo$Companion;Landroid/content/Context;Landroid/content/ComponentName;IIILjava/lang/Object;)Lcom/android/systemui/controls/ui/RenderInfo;

    move-result-object p0

    return-object p0
.end method

.method private final stateDescription(Z)Ljava/lang/CharSequence;
    .locals 3

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlHolder;->notFavoriteStateDescription:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlHolder;->moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlHolder;->favoriteStateDescription:Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->accessibility_control_favorite_position:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/controls/management/ElementWrapper;)V
    .locals 5
    .param p1    # Lcom/android/systemui/controls/management/ElementWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/controls/ControlInterface;

    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getDeviceType()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/controls/management/ControlHolder;->getRenderInfo(Landroid/content/ComponentName;I)Lcom/android/systemui/controls/ui/RenderInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlHolder;->title:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlHolder;->subtitle:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getFavorite()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/controls/management/ControlHolder;->updateFavorite(Z)V

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlHolder;->removed:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getRemoved()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->controls_removed:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/controls/management/ControlHolder$bindData$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/controls/management/ControlHolder$bindData$1;-><init>(Lcom/android/systemui/controls/management/ControlHolder;Lcom/android/systemui/controls/management/ElementWrapper;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/controls/management/ControlHolder;->applyRenderInfo(Lcom/android/systemui/controls/ui/RenderInfo;Lcom/android/systemui/controls/ControlInterface;)V

    return-void
.end method

.method public final getFavoriteCallback()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlHolder;->favoriteCallback:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public updateFavorite(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlHolder;->favorite:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlHolder;->accessibilityDelegate:Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;

    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->setFavorite(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/ControlHolder;->stateDescription(Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
