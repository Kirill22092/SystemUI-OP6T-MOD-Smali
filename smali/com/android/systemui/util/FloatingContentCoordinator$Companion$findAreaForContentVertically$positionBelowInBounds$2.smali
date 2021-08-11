.class final Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$positionBelowInBounds$2;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingContentCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingContentCoordinator.kt\ncom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$positionBelowInBounds$2\n*L\n1#1,351:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $allowedBounds:Landroid/graphics/Rect;

.field final synthetic $newContentBoundsBelow:Lkotlin/Lazy;

.field final synthetic $newContentBoundsBelow$metadata:Lkotlin/reflect/KProperty;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;Lkotlin/Lazy;Lkotlin/reflect/KProperty;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$positionBelowInBounds$2;->$allowedBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$positionBelowInBounds$2;->$newContentBoundsBelow:Lkotlin/Lazy;

    iput-object p3, p0, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$positionBelowInBounds$2;->$newContentBoundsBelow$metadata:Lkotlin/reflect/KProperty;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$positionBelowInBounds$2;->invoke()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$positionBelowInBounds$2;->$allowedBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/util/FloatingContentCoordinator$Companion$findAreaForContentVertically$positionBelowInBounds$2;->$newContentBoundsBelow:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method
