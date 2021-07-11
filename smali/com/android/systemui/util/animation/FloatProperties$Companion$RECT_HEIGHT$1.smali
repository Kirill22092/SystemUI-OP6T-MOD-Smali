.class public final Lcom/android/systemui/util/animation/FloatProperties$Companion$RECT_HEIGHT$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "FloatProperties.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/animation/FloatProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/graphics/Rect;)F
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "rect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 93
    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/FloatProperties$Companion$RECT_HEIGHT$1;->getValue(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public setValue(Landroid/graphics/Rect;F)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "rect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget p0, p1, Landroid/graphics/Rect;->top:I

    float-to-int p2, p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 93
    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/animation/FloatProperties$Companion$RECT_HEIGHT$1;->setValue(Landroid/graphics/Rect;F)V

    return-void
.end method
