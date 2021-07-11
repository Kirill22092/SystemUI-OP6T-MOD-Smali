.class public final Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;
.super Ljava/lang/Object;
.source "ControlsEditingActivity.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsEditingActivity;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/globalactions/GlobalActionsComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstChange()V
    .locals 1

    .line 167
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->access$getSaveButton$p(Lcom/android/systemui/controls/management/ControlsEditingActivity;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onNoneChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 160
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->access$getSubtitle$p(Lcom/android/systemui/controls/management/ControlsEditingActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->access$getEMPTY_TEXT_ID$cp()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->access$getSubtitle$p(Lcom/android/systemui/controls/management/ControlsEditingActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->access$getSUBTITLE_ID$cp()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
