.class final Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;
.super Ljava/lang/Object;
.source "ToggleBehavior.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ToggleBehavior;->initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ToggleBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ToggleBehavior;Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/ToggleBehavior;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/ToggleBehavior;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ToggleBehavior;->getTemplate()Landroid/service/controls/templates/ToggleTemplate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/controls/templates/ToggleTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "template.getTemplateId()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/ToggleBehavior;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleBehavior;->getTemplate()Landroid/service/controls/templates/ToggleTemplate;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/controls/templates/ToggleTemplate;->isChecked()Z

    move-result p0

    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->toggle(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Z)V

    return-void
.end method
