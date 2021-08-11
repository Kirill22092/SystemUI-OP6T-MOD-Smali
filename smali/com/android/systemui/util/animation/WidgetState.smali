.class public final Lcom/android/systemui/util/animation/WidgetState;
.super Ljava/lang/Object;
.source "TransitionLayout.kt"


# instance fields
.field private alpha:F

.field private gone:Z

.field private height:I

.field private measureHeight:I

.field private measureWidth:I

.field private scale:F

.field private width:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/util/animation/WidgetState;-><init>(FFIIIIFFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFIIIIFFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->x:F

    iput p2, p0, Lcom/android/systemui/util/animation/WidgetState;->y:F

    iput p3, p0, Lcom/android/systemui/util/animation/WidgetState;->width:I

    iput p4, p0, Lcom/android/systemui/util/animation/WidgetState;->height:I

    iput p5, p0, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    iput p6, p0, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    iput p7, p0, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    iput p8, p0, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    iput-boolean p9, p0, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    return-void
.end method

.method public synthetic constructor <init>(FFIIIIFFZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    const/4 v0, 0x0

    if-eqz p11, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p11, :cond_6

    move p7, v1

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    move p8, v1

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    move p9, v0

    :cond_8
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/util/animation/WidgetState;-><init>(FFIIIIFFZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/util/animation/WidgetState;FFIIIIFFZILjava/lang/Object;)Lcom/android/systemui/util/animation/WidgetState;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/systemui/util/animation/WidgetState;->x:F

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/android/systemui/util/animation/WidgetState;->y:F

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/systemui/util/animation/WidgetState;->width:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/android/systemui/util/animation/WidgetState;->height:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    goto :goto_8

    :cond_8
    move/from16 v1, p9

    :goto_8
    move p1, v2

    move p2, v3

    move p3, v4

    move p4, v5

    move p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/android/systemui/util/animation/WidgetState;->copy(FFIIIIFFZ)Lcom/android/systemui/util/animation/WidgetState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(FFIIIIFFZ)Lcom/android/systemui/util/animation/WidgetState;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v10, Lcom/android/systemui/util/animation/WidgetState;

    move-object v0, v10

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/util/animation/WidgetState;-><init>(FFIIIIFFZ)V

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/util/animation/WidgetState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/util/animation/WidgetState;

    iget v0, p0, Lcom/android/systemui/util/animation/WidgetState;->x:F

    iget v1, p1, Lcom/android/systemui/util/animation/WidgetState;->x:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/util/animation/WidgetState;->y:F

    iget v1, p1, Lcom/android/systemui/util/animation/WidgetState;->y:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/util/animation/WidgetState;->width:I

    iget v1, p1, Lcom/android/systemui/util/animation/WidgetState;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/util/animation/WidgetState;->height:I

    iget v1, p1, Lcom/android/systemui/util/animation/WidgetState;->height:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    iget v1, p1, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    iget v1, p1, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    iget v1, p1, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    iget v1, p1, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    iget-boolean p1, p1, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getAlpha()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    return p0
.end method

.method public final getGone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    return p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/WidgetState;->height:I

    return p0
.end method

.method public final getMeasureHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    return p0
.end method

.method public final getMeasureWidth()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    return p0
.end method

.method public final getScale()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/WidgetState;->width:I

    return p0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/WidgetState;->x:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/WidgetState;->y:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/util/animation/WidgetState;->x:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/util/animation/WidgetState;->y:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/util/animation/WidgetState;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/util/animation/WidgetState;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final initFromLayout(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    const-string v1, "layoutParams.constraintWidget"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/util/animation/WidgetState;->x:F

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/util/animation/WidgetState;->y:F

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/util/animation/WidgetState;->width:I

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->height:I

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    iget p1, p0, Lcom/android/systemui/util/animation/WidgetState;->width:I

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    goto :goto_2

    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/util/animation/WidgetState;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/util/animation/WidgetState;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/util/animation/WidgetState;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/util/animation/WidgetState;->height:I

    iget v4, p0, Lcom/android/systemui/util/animation/WidgetState;->width:I

    iput v4, p0, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    iput v0, p0, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    :goto_2
    return-void
.end method

.method public final setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    return-void
.end method

.method public final setGone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->height:I

    return-void
.end method

.method public final setMeasureHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    return-void
.end method

.method public final setMeasureWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    return-void
.end method

.method public final setScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->width:I

    return-void
.end method

.method public final setX(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->x:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/WidgetState;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetState(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/WidgetState;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/WidgetState;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/WidgetState;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/WidgetState;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", measureWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", measureHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", gone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
