.class public interface abstract Lcom/android/systemui/controls/ControlInterface;
.super Ljava/lang/Object;
.source "ControlStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ControlInterface$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getComponent()Landroid/content/ComponentName;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getControlId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getCustomIcon()Landroid/graphics/drawable/Icon;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getDeviceType()I
.end method

.method public abstract getFavorite()Z
.end method

.method public abstract getRemoved()Z
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
