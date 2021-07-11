.class final Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "ControlsEditingActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsEditingActivity;->bindButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-static {p1}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->access$saveFavorites(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V

    .line 146
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-static {p1}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->access$animateExitAndFinish(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V

    .line 147
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->access$getGlobalActionsComponent$p(Lcom/android/systemui/controls/management/ControlsEditingActivity;)Lcom/android/systemui/globalactions/GlobalActionsComponent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->handleShowGlobalActionsMenu()V

    return-void
.end method
