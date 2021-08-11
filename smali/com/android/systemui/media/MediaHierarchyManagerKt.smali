.class public final Lcom/android/systemui/media/MediaHierarchyManagerKt;
.super Ljava/lang/Object;
.source "MediaHierarchyManager.kt"


# direct methods
.method public static final isShownNotFaded(Landroid/view/View;)Z
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$isShownNotFaded"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_3

    instance-of v0, p0, Landroid/view/View;

    if-nez v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_3
    return v1
.end method
