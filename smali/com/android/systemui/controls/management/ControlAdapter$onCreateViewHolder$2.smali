.class final Lcom/android/systemui/controls/management/ControlAdapter$onCreateViewHolder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ControlAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/controls/management/Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlAdapter$onCreateViewHolder$2;->this$0:Lcom/android/systemui/controls/management/ControlAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/ControlAdapter$onCreateViewHolder$2;->invoke(Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlAdapter$onCreateViewHolder$2;->this$0:Lcom/android/systemui/controls/management/ControlAdapter;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlAdapter;->access$getModel$p(Lcom/android/systemui/controls/management/ControlAdapter;)Lcom/android/systemui/controls/management/ControlsModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/controls/management/ControlsModel;->changeFavoriteStatus(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
