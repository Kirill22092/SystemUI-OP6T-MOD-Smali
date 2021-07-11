.class public interface abstract Lcom/android/systemui/controls/ui/ControlActionCoordinator;
.super Ljava/lang/Object;
.source "ControlActionCoordinator.kt"


# virtual methods
.method public abstract closeDialogs()V
.end method

.method public abstract drag(Z)V
.end method

.method public abstract enableActionOnTouch(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract longPress(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract runPendingAction(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setValue(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;F)V
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract toggle(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Z)V
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract touch(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/service/controls/Control;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
