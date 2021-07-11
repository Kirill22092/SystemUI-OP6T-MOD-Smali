.class public interface abstract Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;
.super Ljava/lang/Object;
.source "ControlsBindingController.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/controller/ControlsBindingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/List<",
        "+",
        "Landroid/service/controls/Control;",
        ">;>;"
    }
.end annotation


# virtual methods
.method public abstract error(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
