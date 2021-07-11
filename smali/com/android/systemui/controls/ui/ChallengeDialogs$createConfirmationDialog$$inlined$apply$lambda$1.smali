.class final Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "ChallengeDialogs.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ChallengeDialogs;->createConfirmationDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;Lkotlin/jvm/functions/Function0;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cvh$inlined:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic $lastAction$inlined:Landroid/service/controls/actions/ControlAction;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$$inlined$apply$lambda$1;->$cvh$inlined:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$$inlined$apply$lambda$1;->$lastAction$inlined:Landroid/service/controls/actions/ControlAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 132
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$$inlined$apply$lambda$1;->$cvh$inlined:Lcom/android/systemui/controls/ui/ControlViewHolder;

    sget-object v0, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$$inlined$apply$lambda$1;->$lastAction$inlined:Landroid/service/controls/actions/ControlAction;

    const-string/jumbo v1, "true"

    invoke-static {v0, p0, v1}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->access$addChallengeValue(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/service/controls/actions/ControlAction;Ljava/lang/String;)Landroid/service/controls/actions/ControlAction;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->action(Landroid/service/controls/actions/ControlAction;)V

    .line 133
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
