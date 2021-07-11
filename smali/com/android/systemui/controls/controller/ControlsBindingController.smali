.class public interface abstract Lcom/android/systemui/controls/controller/ControlsBindingController;
.super Ljava/lang/Object;
.source "ControlsBindingController.kt"

# interfaces
.implements Lcom/android/systemui/util/UserAwareController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;
    }
.end annotation


# virtual methods
.method public abstract action(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/actions/ControlAction;)V
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/controller/ControlInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/service/controls/actions/ControlAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract bindAndLoad(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;)Ljava/lang/Runnable;
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract bindAndLoadSuggested(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;)V
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onComponentRemoved(Landroid/content/ComponentName;)V
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract subscribe(Lcom/android/systemui/controls/controller/StructureInfo;)V
    .param p1    # Lcom/android/systemui/controls/controller/StructureInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract unsubscribe()V
.end method
