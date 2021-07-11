.class final Lcom/android/systemui/DualToneHandler$Color;
.super Ljava/lang/Object;
.source "DualToneHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DualToneHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Color"
.end annotation


# instance fields
.field private final background:I

.field private final fill:I

.field private final single:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/DualToneHandler$Color;->single:I

    iput p2, p0, Lcom/android/systemui/DualToneHandler$Color;->background:I

    iput p3, p0, Lcom/android/systemui/DualToneHandler$Color;->fill:I

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

    instance-of v0, p1, Lcom/android/systemui/DualToneHandler$Color;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/DualToneHandler$Color;

    iget v0, p0, Lcom/android/systemui/DualToneHandler$Color;->single:I

    iget v1, p1, Lcom/android/systemui/DualToneHandler$Color;->single:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/DualToneHandler$Color;->background:I

    iget v1, p1, Lcom/android/systemui/DualToneHandler$Color;->background:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/systemui/DualToneHandler$Color;->fill:I

    iget p1, p1, Lcom/android/systemui/DualToneHandler$Color;->fill:I

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

.method public final getBackground()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/android/systemui/DualToneHandler$Color;->background:I

    return p0
.end method

.method public final getFill()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/android/systemui/DualToneHandler$Color;->fill:I

    return p0
.end method

.method public final getSingle()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/android/systemui/DualToneHandler$Color;->single:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/DualToneHandler$Color;->single:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/DualToneHandler$Color;->background:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/DualToneHandler$Color;->fill:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color(single="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/DualToneHandler$Color;->single:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/DualToneHandler$Color;->background:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/DualToneHandler$Color;->fill:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
