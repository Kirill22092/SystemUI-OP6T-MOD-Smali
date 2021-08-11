.class final Lcom/android/systemui/controls/ui/ControlViewHolder$bindData$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "ControlViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlViewHolder;->bindData(Lcom/android/systemui/controls/ui/ControlWithState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ControlWithState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$bindData$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$bindData$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$bindData$$inlined$let$lambda$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-interface {p1, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->longPress(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    const/4 p0, 0x1

    return p0
.end method
