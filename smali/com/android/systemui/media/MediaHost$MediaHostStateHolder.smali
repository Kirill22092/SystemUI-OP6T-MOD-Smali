.class public final Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;
.super Ljava/lang/Object;
.source "MediaHost.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaHostState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/MediaHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaHostStateHolder"
.end annotation


# instance fields
.field private changedListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private expansion:F

.field private falsingProtectionNeeded:Z

.field private lastDisappearHash:I

.field private measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private showsOnlyActiveMedia:Z

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    new-instance v0, Lcom/android/systemui/util/animation/DisappearParameters;

    invoke-direct {v0}, Lcom/android/systemui/util/animation/DisappearParameters;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->lastDisappearHash:I

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/media/MediaHostState;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getExpansion()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setExpansion(F)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getShowsOnlyActiveMedia()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setShowsOnlyActiveMedia(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v1, v4, v4, v3, v2}, Lcom/android/systemui/util/animation/MeasurementInput;->copy$default(Lcom/android/systemui/util/animation/MeasurementInput;IIILjava/lang/Object;)Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setMeasurementInput(Lcom/android/systemui/util/animation/MeasurementInput;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/DisappearParameters;->deepCopy()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setDisappearParameters(Lcom/android/systemui/util/animation/DisappearParameters;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getFalsingProtectionNeeded()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setFalsingProtectionNeeded(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/android/systemui/media/MediaHostState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v0

    check-cast p1, Lcom/android/systemui/media/MediaHostState;

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getExpansion()F

    move-result v0

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v2

    cmpg-float v0, v0, v2

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getShowsOnlyActiveMedia()Z

    move-result v0

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getVisible()Z

    move-result v0

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v2

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getFalsingProtectionNeeded()Z

    move-result v0

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getFalsingProtectionNeeded()Z

    move-result v2

    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/DisappearParameters;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    return-object p0
.end method

.method public getExpansion()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->expansion:F

    return p0
.end method

.method public getFalsingProtectionNeeded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    return p0
.end method

.method public getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    return-object p0
.end method

.method public getShowsOnlyActiveMedia()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    return p0
.end method

.method public getVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    return p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/MeasurementInput;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getExpansion()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getFalsingProtectionNeeded()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getShowsOnlyActiveMedia()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/animation/DisappearParameters;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setChangedListener(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public setDisappearParameters(Lcom/android/systemui/util/animation/DisappearParameters;)V
    .locals 3
    .param p1    # Lcom/android/systemui/util/animation/DisappearParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/DisappearParameters;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->lastDisappearHash:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    iput v0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->lastDisappearHash:I

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    :cond_1
    return-void
.end method

.method public setExpansion(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->expansion:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->expansion:F

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public setFalsingProtectionNeeded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    :cond_1
    return-void
.end method

.method public setMeasurementInput(Lcom/android/systemui/util/animation/MeasurementInput;)V
    .locals 2
    .param p1    # Lcom/android/systemui/util/animation/MeasurementInput;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/animation/MeasurementInput;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    :cond_1
    return-void
.end method

.method public setShowsOnlyActiveMedia(Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    :cond_1
    return-void
.end method
