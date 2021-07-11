.class final Lcom/android/systemui/controls/ui/ControlViewHolder$setErrorStatus$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ControlViewHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlViewHolder;->setErrorStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $text:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$setErrorStatus$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$setErrorStatus$1;->$text:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$setErrorStatus$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$setErrorStatus$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$setErrorStatus$1;->$text:Ljava/lang/String;

    const-string/jumbo v1, "text"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    return-void
.end method
