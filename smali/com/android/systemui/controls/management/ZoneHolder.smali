.class final Lcom/android/systemui/controls/management/ZoneHolder;
.super Lcom/android/systemui/controls/management/Holder;
.source "ControlAdapter.kt"


# instance fields
.field private final zone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/Holder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 170
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/ZoneHolder;->zone:Landroid/widget/TextView;

    return-void

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/controls/management/ElementWrapper;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/ElementWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    check-cast p1, Lcom/android/systemui/controls/management/ZoneNameWrapper;

    .line 174
    iget-object p0, p0, Lcom/android/systemui/controls/management/ZoneHolder;->zone:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/ZoneNameWrapper;->getZoneName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
