.class final Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "ChallengeDialogs.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ChallengeDialogs;->createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cvh$inlined:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic $lastAction$inlined:Landroid/service/controls/actions/ControlAction;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$1;->$cvh$inlined:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$1;->$lastAction$inlined:Landroid/service/controls/actions/ControlAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    instance-of p2, p1, Landroid/app/Dialog;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/app/Dialog;

    sget v0, Lcom/android/systemui/R$id;->controls_pin_input:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->controls_pin_input:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$1;->$cvh$inlined:Lcom/android/systemui/controls/ui/ControlViewHolder;

    sget-object v1, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$1;->$lastAction$inlined:Landroid/service/controls/actions/ControlAction;

    invoke-static {v1, p0, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->access$addChallengeValue(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/service/controls/actions/ControlAction;Ljava/lang/String;)Landroid/service/controls/actions/ControlAction;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->action(Landroid/service/controls/actions/ControlAction;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
