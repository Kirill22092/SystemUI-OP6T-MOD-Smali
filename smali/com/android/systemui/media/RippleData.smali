.class final Lcom/android/systemui/media/RippleData;
.super Ljava/lang/Object;
.source "LightSourceDrawable.kt"


# instance fields
.field private alpha:F

.field private highlight:F

.field private maxSize:F

.field private minSize:F

.field private progress:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FFFFFFF)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/media/RippleData;->x:F

    iput p2, p0, Lcom/android/systemui/media/RippleData;->y:F

    iput p3, p0, Lcom/android/systemui/media/RippleData;->alpha:F

    iput p4, p0, Lcom/android/systemui/media/RippleData;->progress:F

    iput p5, p0, Lcom/android/systemui/media/RippleData;->minSize:F

    iput p6, p0, Lcom/android/systemui/media/RippleData;->maxSize:F

    iput p7, p0, Lcom/android/systemui/media/RippleData;->highlight:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/media/RippleData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/media/RippleData;

    iget v0, p0, Lcom/android/systemui/media/RippleData;->x:F

    iget v1, p1, Lcom/android/systemui/media/RippleData;->x:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/media/RippleData;->y:F

    iget v1, p1, Lcom/android/systemui/media/RippleData;->y:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/media/RippleData;->alpha:F

    iget v1, p1, Lcom/android/systemui/media/RippleData;->alpha:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/media/RippleData;->progress:F

    iget v1, p1, Lcom/android/systemui/media/RippleData;->progress:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/media/RippleData;->minSize:F

    iget v1, p1, Lcom/android/systemui/media/RippleData;->minSize:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/media/RippleData;->maxSize:F

    iget v1, p1, Lcom/android/systemui/media/RippleData;->maxSize:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/systemui/media/RippleData;->highlight:F

    iget p1, p1, Lcom/android/systemui/media/RippleData;->highlight:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

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

    .line 51
    iget p0, p0, Lcom/android/systemui/media/RippleData;->alpha:F

    return p0
.end method

.method public final getMaxSize()F
    .locals 0

    .line 54
    iget p0, p0, Lcom/android/systemui/media/RippleData;->maxSize:F

    return p0
.end method

.method public final getMinSize()F
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/systemui/media/RippleData;->minSize:F

    return p0
.end method

.method public final getProgress()F
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/systemui/media/RippleData;->progress:F

    return p0
.end method

.method public final getX()F
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/media/RippleData;->x:F

    return p0
.end method

.method public final getY()F
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/systemui/media/RippleData;->y:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/media/RippleData;->x:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/media/RippleData;->y:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/media/RippleData;->alpha:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/media/RippleData;->progress:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/media/RippleData;->minSize:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/media/RippleData;->maxSize:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/media/RippleData;->highlight:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setAlpha(F)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/android/systemui/media/RippleData;->alpha:F

    return-void
.end method

.method public final setHighlight(F)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/android/systemui/media/RippleData;->highlight:F

    return-void
.end method

.method public final setMaxSize(F)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/android/systemui/media/RippleData;->maxSize:F

    return-void
.end method

.method public final setMinSize(F)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/android/systemui/media/RippleData;->minSize:F

    return-void
.end method

.method public final setProgress(F)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/systemui/media/RippleData;->progress:F

    return-void
.end method

.method public final setX(F)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/systemui/media/RippleData;->x:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/android/systemui/media/RippleData;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RippleData(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/media/RippleData;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/media/RippleData;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/media/RippleData;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/media/RippleData;->progress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/media/RippleData;->minSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/media/RippleData;->maxSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", highlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/media/RippleData;->highlight:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
