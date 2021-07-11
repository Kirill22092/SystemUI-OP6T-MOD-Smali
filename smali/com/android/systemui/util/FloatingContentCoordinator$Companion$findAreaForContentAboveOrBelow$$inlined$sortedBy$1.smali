.class public final Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentAboveOrBelow$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/FloatingContentCoordinator$Companion;->findAreaForContentAboveOrBelow(Landroid/graphics/Rect;Ljava/util/Collection;Z)Landroid/graphics/Rect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 FloatingContentCoordinator.kt\ncom/android/systemui/util/FloatingContentCoordinator$Companion\n*L\n1#1,319:1\n319#2:320\n319#2:321\n*E\n"
.end annotation


# instance fields
.field final synthetic $findAbove$inlined:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentAboveOrBelow$$inlined$sortedBy$1;->$findAbove$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Landroid/graphics/Rect;

    .line 319
    iget-boolean v0, p0, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentAboveOrBelow$$inlined$sortedBy$1;->$findAbove$inlined:Z

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_0

    neg-int p1, p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Landroid/graphics/Rect;

    .line 319
    iget-boolean p0, p0, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentAboveOrBelow$$inlined$sortedBy$1;->$findAbove$inlined:Z

    if-eqz p0, :cond_1

    iget p0, p2, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    goto :goto_0

    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->top:I

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
