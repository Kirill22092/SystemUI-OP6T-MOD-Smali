.class final Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "ControlsFavoritingActivity.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->loadControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$2;->accept(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$$inlined$let$lambda$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p0, p1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$setCancelLoadRunnable$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;Ljava/lang/Runnable;)V

    return-void
.end method
