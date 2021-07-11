.class public interface abstract Lcom/android/systemui/media/MediaHostState;
.super Ljava/lang/Object;
.source "MediaHost.kt"


# virtual methods
.method public abstract copy()Lcom/android/systemui/media/MediaHostState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getExpansion()F
.end method

.method public abstract getFalsingProtectionNeeded()Z
.end method

.method public abstract getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getShowsOnlyActiveMedia()Z
.end method

.method public abstract getVisible()Z
.end method

.method public abstract setExpansion(F)V
.end method
