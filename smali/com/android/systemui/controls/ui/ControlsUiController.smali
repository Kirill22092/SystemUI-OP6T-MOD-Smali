.class public interface abstract Lcom/android/systemui/controls/ui/ControlsUiController;
.super Ljava/lang/Object;
.source "ControlsUiController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/ControlsUiController$Companion;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/controls/ui/ControlsUiController$Companion;->$$INSTANCE:Lcom/android/systemui/controls/ui/ControlsUiController$Companion;

    return-void
.end method


# virtual methods
.method public abstract closeDialogs(Z)V
.end method

.method public abstract getAvailable()Z
.end method

.method public abstract hide()V
.end method

.method public abstract onActionResponse(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onRefreshState(Landroid/content/ComponentName;Ljava/util/List;)V
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract show(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
