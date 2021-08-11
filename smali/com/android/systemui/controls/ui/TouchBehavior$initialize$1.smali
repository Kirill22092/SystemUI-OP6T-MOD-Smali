.class final Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;
.super Ljava/lang/Object;
.source "TouchBehavior.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/TouchBehavior;->initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/TouchBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/TouchBehavior;Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/controls/templates/ControlTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "template.getTemplateId()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/TouchBehavior;->getControl()Landroid/service/controls/Control;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->touch(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    instance-of p1, p1, Landroid/service/controls/templates/StatelessTemplate;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/controls/ui/TouchBehavior;->access$setStatelessTouch$p(Lcom/android/systemui/controls/ui/TouchBehavior;Z)V

    iget-object v1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->access$getEnabled$p(Lcom/android/systemui/controls/ui/TouchBehavior;)Z

    move-result v2

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->access$getLastColorOffset$p(Lcom/android/systemui/controls/ui/TouchBehavior;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$packages__apps__OPSystemUI__android_common__OPSystemUI_core$default(Lcom/android/systemui/controls/ui/ControlViewHolder;ZIZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getUiExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;-><init>(Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;)V

    const-wide/16 v1, 0xbb8

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
