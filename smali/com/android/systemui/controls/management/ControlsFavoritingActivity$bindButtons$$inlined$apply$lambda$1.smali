.class final Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "ControlsFavoritingActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->bindButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsFavoritingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsFavoritingActivity.kt\ncom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$1$1\n*L\n1#1,385:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_apply:Landroid/widget/Button;

.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;


# direct methods
.method constructor <init>(Landroid/widget/Button;Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$1;->$this_apply:Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$1;->$this_apply:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getDoneButton$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->controls_favorite_toast_no_changes:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    new-array v1, v1, [Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$bindButtons$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$animateExitAndFinish(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    return-void
.end method
