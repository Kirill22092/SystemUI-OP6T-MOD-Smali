.class final Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3;
.super Ljava/lang/Object;
.source "ChallengeDialogs.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ChallengeDialogs;->createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $instructions$inlined:I

.field final synthetic $this_apply:Landroid/app/AlertDialog;

.field final synthetic $useAlphaNumeric$inlined:Z


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3;->$this_apply:Landroid/app/AlertDialog;

    iput p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3;->$instructions$inlined:I

    iput-boolean p3, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3;->$useAlphaNumeric$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 102
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3;->$this_apply:Landroid/app/AlertDialog;

    sget v0, Lcom/android/systemui/R$id;->controls_pin_input:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 103
    iget v0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3;->$instructions$inlined:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3;->$this_apply:Landroid/app/AlertDialog;

    sget v1, Lcom/android/systemui/R$id;->controls_pin_use_alpha:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 105
    iget-boolean v1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3;->$useAlphaNumeric$inlined:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 106
    sget-object v1, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    const-string v2, "editText"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->access$setInputType(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/widget/EditText;Z)V

    .line 107
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3;->$this_apply:Landroid/app/AlertDialog;

    sget v1, Lcom/android/systemui/R$id;->controls_pin_use_alpha:I

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3$1;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3$1;-><init>(Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
