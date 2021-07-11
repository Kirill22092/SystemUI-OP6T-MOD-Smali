.class final Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsAbove$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FloatingContentCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/FloatingContentCoordinator$Companion;->findAreaForContentVertically(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/Collection;Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $contentRect:Landroid/graphics/Rect;

.field final synthetic $newlyOverlappingRect:Landroid/graphics/Rect;

.field final synthetic $rectsToAvoidAbove:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsAbove$2;->$contentRect:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsAbove$2;->$rectsToAvoidAbove:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsAbove$2;->$newlyOverlappingRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Rect;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 264
    sget-object v0, Lcom/android/systemui/util/FloatingContentCoordinator;->Companion:Lcom/android/systemui/util/FloatingContentCoordinator$Companion;

    .line 265
    iget-object v1, p0, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsAbove$2;->$contentRect:Landroid/graphics/Rect;

    .line 266
    iget-object v2, p0, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsAbove$2;->$rectsToAvoidAbove:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsAbove$2;->$newlyOverlappingRect:Landroid/graphics/Rect;

    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x1

    .line 264
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/util/FloatingContentCoordinator$Companion;->findAreaForContentAboveOrBelow(Landroid/graphics/Rect;Ljava/util/Collection;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsAbove$2;->invoke()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
