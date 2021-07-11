.class final Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;
.super Ljava/lang/Object;
.source "TemperatureControlBehavior.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $template:Landroid/service/controls/templates/TemperatureControlTemplate;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/TemperatureControlBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/TemperatureControlBehavior;Landroid/service/controls/templates/TemperatureControlTemplate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TemperatureControlBehavior;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;->$template:Landroid/service/controls/templates/TemperatureControlTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 59
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TemperatureControlBehavior;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TemperatureControlBehavior;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;->$template:Landroid/service/controls/templates/TemperatureControlTemplate;

    invoke-virtual {v1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "template.getTemplateId()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TemperatureControlBehavior;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->getControl()Landroid/service/controls/Control;

    move-result-object p0

    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->touch(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V

    return-void
.end method
