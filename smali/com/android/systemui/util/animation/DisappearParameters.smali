.class public final Lcom/android/systemui/util/animation/DisappearParameters;
.super Ljava/lang/Object;
.source "TransitionLayoutController.kt"


# instance fields
.field private contentTranslationFraction:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private disappearEnd:F

.field private disappearSize:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private disappearStart:F

.field private fadeStartPosition:F

.field private gonePivot:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->gonePivot:Landroid/graphics/PointF;

    .line 321
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearSize:Landroid/graphics/PointF;

    .line 330
    new-instance v0, Landroid/graphics/PointF;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->contentTranslationFraction:Landroid/graphics/PointF;

    .line 344
    iput v2, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearEnd:F

    const v0, 0x3f666666    # 0.9f

    .line 351
    iput v0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->fadeStartPosition:F

    return-void
.end method


# virtual methods
.method public final deepCopy()Lcom/android/systemui/util/animation/DisappearParameters;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 389
    new-instance v0, Lcom/android/systemui/util/animation/DisappearParameters;

    invoke-direct {v0}, Lcom/android/systemui/util/animation/DisappearParameters;-><init>()V

    .line 390
    iget-object v1, v0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearSize:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearSize:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 391
    iget-object v1, v0, Lcom/android/systemui/util/animation/DisappearParameters;->gonePivot:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/systemui/util/animation/DisappearParameters;->gonePivot:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 392
    iget-object v1, v0, Lcom/android/systemui/util/animation/DisappearParameters;->contentTranslationFraction:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/systemui/util/animation/DisappearParameters;->contentTranslationFraction:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 393
    iget v1, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearStart:F

    iput v1, v0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearStart:F

    .line 394
    iget v1, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearEnd:F

    iput v1, v0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearEnd:F

    .line 395
    iget p0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->fadeStartPosition:F

    iput p0, v0, Lcom/android/systemui/util/animation/DisappearParameters;->fadeStartPosition:F

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 354
    instance-of v0, p1, Lcom/android/systemui/util/animation/DisappearParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearSize:Landroid/graphics/PointF;

    check-cast p1, Lcom/android/systemui/util/animation/DisappearParameters;

    iget-object v2, p1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearSize:Landroid/graphics/PointF;

    invoke-virtual {v0, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->gonePivot:Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/android/systemui/util/animation/DisappearParameters;->gonePivot:Landroid/graphics/PointF;

    invoke-virtual {v0, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->contentTranslationFraction:Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/android/systemui/util/animation/DisappearParameters;->contentTranslationFraction:Landroid/graphics/PointF;

    invoke-virtual {v0, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 366
    :cond_3
    iget v0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearStart:F

    iget v2, p1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearStart:F

    cmpg-float v0, v0, v2

    if-eqz v0, :cond_4

    return v1

    .line 369
    :cond_4
    iget v0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearEnd:F

    iget v2, p1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearEnd:F

    cmpg-float v0, v0, v2

    if-eqz v0, :cond_5

    return v1

    .line 372
    :cond_5
    iget p0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->fadeStartPosition:F

    iget p1, p1, Lcom/android/systemui/util/animation/DisappearParameters;->fadeStartPosition:F

    cmpg-float p0, p0, p1

    if-eqz p0, :cond_6

    return v1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public final getContentTranslationFraction()Landroid/graphics/PointF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 330
    iget-object p0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->contentTranslationFraction:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getDisappearEnd()F
    .locals 0

    .line 344
    iget p0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearEnd:F

    return p0
.end method

.method public final getDisappearSize()Landroid/graphics/PointF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 321
    iget-object p0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearSize:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getDisappearStart()F
    .locals 0

    .line 337
    iget p0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearStart:F

    return p0
.end method

.method public final getFadeStartPosition()F
    .locals 0

    .line 351
    iget p0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->fadeStartPosition:F

    return p0
.end method

.method public final getGonePivot()Landroid/graphics/PointF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 314
    iget-object p0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->gonePivot:Landroid/graphics/PointF;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearSize:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 380
    iget-object v1, p0, Lcom/android/systemui/util/animation/DisappearParameters;->gonePivot:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/graphics/PointF;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 381
    iget-object v1, p0, Lcom/android/systemui/util/animation/DisappearParameters;->contentTranslationFraction:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/graphics/PointF;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 382
    iget v1, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearStart:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 383
    iget v1, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearEnd:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 384
    iget p0, p0, Lcom/android/systemui/util/animation/DisappearParameters;->fadeStartPosition:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setDisappearEnd(F)V
    .locals 0

    .line 344
    iput p1, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearEnd:F

    return-void
.end method

.method public final setDisappearStart(F)V
    .locals 0

    .line 337
    iput p1, p0, Lcom/android/systemui/util/animation/DisappearParameters;->disappearStart:F

    return-void
.end method

.method public final setFadeStartPosition(F)V
    .locals 0

    .line 351
    iput p1, p0, Lcom/android/systemui/util/animation/DisappearParameters;->fadeStartPosition:F

    return-void
.end method
