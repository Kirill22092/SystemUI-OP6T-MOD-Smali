.class final Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$2;
.super Ljava/lang/Object;
.source "StatusBehavior.kt"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/StatusBehavior;->bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cws:Lcom/android/systemui/controls/ui/ControlWithState;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/StatusBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/StatusBehavior;Lcom/android/systemui/controls/ui/ControlWithState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$2;->this$0:Lcom/android/systemui/controls/ui/StatusBehavior;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$2;->$cws:Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$2;->this$0:Lcom/android/systemui/controls/ui/StatusBehavior;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/StatusBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$2;->$cws:Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-static {p1, v0, p0}, Lcom/android/systemui/controls/ui/StatusBehavior;->access$showNotFoundDialog(Lcom/android/systemui/controls/ui/StatusBehavior;Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ControlWithState;)V

    const/4 p0, 0x1

    return p0
.end method
