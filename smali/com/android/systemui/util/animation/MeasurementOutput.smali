.class public final Lcom/android/systemui/util/animation/MeasurementOutput;
.super Ljava/lang/Object;
.source "MeasurementInput.kt"


# instance fields
.field private measuredHeight:I

.field private measuredWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    iput p2, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/util/animation/MeasurementOutput;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/util/animation/MeasurementOutput;

    iget v0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    iget v1, p1, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    iget p1, p1, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

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

.method public final getMeasuredHeight()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    return p0
.end method

.method public final getMeasuredWidth()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setMeasuredHeight(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    return-void
.end method

.method public final setMeasuredWidth(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MeasurementOutput(measuredWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", measuredHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
