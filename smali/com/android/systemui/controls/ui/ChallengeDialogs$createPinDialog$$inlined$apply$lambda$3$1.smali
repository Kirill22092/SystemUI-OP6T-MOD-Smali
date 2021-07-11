.class final Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3$1;
.super Ljava/lang/Object;
.source "ChallengeDialogs.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $editText:Landroid/widget/EditText;

.field final synthetic $useAlphaCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3$1;->$editText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3$1;->$useAlphaCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 108
    sget-object p1, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3$1;->$editText:Landroid/widget/EditText;

    const-string v1, "editText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3$1;->$useAlphaCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->access$setInputType(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/widget/EditText;Z)V

    return-void
.end method
