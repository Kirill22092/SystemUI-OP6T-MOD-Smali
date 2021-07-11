.class public interface abstract Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;
.super Ljava/lang/Object;
.source "FloatingContentCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/FloatingContentCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FloatingContent"
.end annotation


# virtual methods
.method public calculateNewBoundsOnOverlap(Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "overlappingContentBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherContentBounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/android/systemui/util/FloatingContentCoordinator;->Companion:Lcom/android/systemui/util/FloatingContentCoordinator$Companion;

    .line 90
    invoke-interface {p0}, Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;->getFloatingBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v1

    .line 93
    invoke-interface {p0}, Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;->getAllowedFloatingBoundsRegion()Landroid/graphics/Rect;

    move-result-object p0

    .line 89
    invoke-virtual {v0, v1, p1, p2, p0}, Lcom/android/systemui/util/FloatingContentCoordinator$Companion;->findAreaForContentVertically(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/Collection;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public abstract getAllowedFloatingBoundsRegion()Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getFloatingBoundsOnScreen()Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract moveToBounds(Landroid/graphics/Rect;)V
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
