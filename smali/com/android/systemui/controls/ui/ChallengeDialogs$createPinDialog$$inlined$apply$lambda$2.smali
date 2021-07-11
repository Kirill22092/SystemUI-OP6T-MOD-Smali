.class final Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$2;
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
.field final synthetic $onCancel$inlined:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$2;->$onCancel$inlined:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$2;->$onCancel$inlined:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
