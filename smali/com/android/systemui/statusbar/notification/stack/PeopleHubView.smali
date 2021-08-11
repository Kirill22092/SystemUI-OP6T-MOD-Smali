.class public final Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;
.super Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.source "PeopleHubView.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/SwipeableView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/stack/PeopleHubView$PersonDataListenerImpl;
    }
.end annotation


# instance fields
.field private canSwipe:Z

.field private contents:Landroid/view/ViewGroup;

.field private label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getContents$p(Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->contents:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "contents"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method protected applyContentTransformation(FF)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->applyContentTransformation(FF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->contents:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const-string v2, "contents"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->contents:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string/jumbo v5, "view"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, p2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCanSwipe()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->canSwipe:Z

    return p0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->contents:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "contents"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public hasFinishedInitialization()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needsClippingToShelf()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onFinishInflate()V
    .locals 3

    sget v0, Lcom/android/systemui/R$id;->people_list:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "requireViewById(R.id.people_list)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->contents:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->header_label:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "requireViewById(R.id.header_label)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->label:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->contents:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView$onFinishInflate$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView$onFinishInflate$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;)V

    invoke-static {v0, v2}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onFinishInflate()V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->onUiModeChanged()V

    return-void

    :cond_0
    const-string p0, "contents"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onUiModeChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundColors()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->label:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$color;->op_notification_info_primary_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const-string p0, "label"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public resetTranslation()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method public final setCanSwipe(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->canSwipe:Z

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->resetTranslation()V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->canSwipe:Z

    :cond_1
    return-void
.end method

.method public setTranslation(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->canSwipe:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTranslation(F)V

    :cond_0
    return-void
.end method
