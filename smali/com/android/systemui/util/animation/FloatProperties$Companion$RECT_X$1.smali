.class public final Lcom/android/systemui/util/animation/FloatProperties$Companion$RECT_X$1;
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

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/graphics/Rect;)F
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-virtual {p0}, Lkotlin/jvm/internal/FloatCompanionObject;->getMAX_VALUE()F

    move-result p0

    neg-float p0, p0

    :goto_0
    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/FloatProperties$Companion$RECT_X$1;->getValue(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public setValue(Landroid/graphics/Rect;F)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    float-to-int p0, p2

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/animation/FloatProperties$Companion$RECT_X$1;->setValue(Landroid/graphics/Rect;F)V

    return-void
.end method
