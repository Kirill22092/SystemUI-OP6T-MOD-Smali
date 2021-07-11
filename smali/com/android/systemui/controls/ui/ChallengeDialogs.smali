.class public final Lcom/android/systemui/controls/ui/ChallengeDialogs;
.super Ljava/lang/Object;
.source "ChallengeDialogs.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChallengeDialogs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChallengeDialogs.kt\ncom/android/systemui/controls/ui/ChallengeDialogs\n*L\n1#1,171:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/android/systemui/controls/ui/ChallengeDialogs;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/ChallengeDialogs;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$addChallengeValue(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/service/controls/actions/ControlAction;Ljava/lang/String;)Landroid/service/controls/actions/ControlAction;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->addChallengeValue(Landroid/service/controls/actions/ControlAction;Ljava/lang/String;)Landroid/service/controls/actions/ControlAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setInputType(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/widget/EditText;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->setInputType(Landroid/widget/EditText;Z)V

    return-void
.end method

.method private final addChallengeValue(Landroid/service/controls/actions/ControlAction;Ljava/lang/String;)Landroid/service/controls/actions/ControlAction;
    .locals 1

    .line 161
    invoke-virtual {p1}, Landroid/service/controls/actions/ControlAction;->getTemplateId()Ljava/lang/String;

    move-result-object p0

    .line 163
    instance-of v0, p1, Landroid/service/controls/actions/BooleanAction;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/service/controls/actions/BooleanAction;

    check-cast p1, Landroid/service/controls/actions/BooleanAction;

    invoke-virtual {p1}, Landroid/service/controls/actions/BooleanAction;->getNewState()Z

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/service/controls/actions/BooleanAction;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    instance-of v0, p1, Landroid/service/controls/actions/FloatAction;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/service/controls/actions/FloatAction;

    check-cast p1, Landroid/service/controls/actions/FloatAction;

    invoke-virtual {p1}, Landroid/service/controls/actions/FloatAction;->getNewValue()F

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/service/controls/actions/FloatAction;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    instance-of v0, p1, Landroid/service/controls/actions/CommandAction;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/service/controls/actions/CommandAction;

    invoke-direct {v0, p0, p2}, Landroid/service/controls/actions/CommandAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    instance-of v0, p1, Landroid/service/controls/actions/ModeAction;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/service/controls/actions/ModeAction;

    check-cast p1, Landroid/service/controls/actions/ModeAction;

    invoke-virtual {p1}, Landroid/service/controls/actions/ModeAction;->getNewMode()I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/service/controls/actions/ModeAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-object v0

    .line 167
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\'action\' is not a known type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final setInputType(Landroid/widget/EditText;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/16 p0, 0x81

    .line 152
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x12

    .line 155
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final createConfirmationDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;Lkotlin/jvm/functions/Function0;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "cvh"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onCancel"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLastAction()Landroid/service/controls/actions/ControlAction;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ControlsUiController"

    const-string p1, "Confirmation Dialog attempted but no last action is set. Will not show"

    .line 121
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10302d1

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 126
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 128
    sget v2, Lcom/android/systemui/R$string;->controls_confirmation_message:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    .line 127
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    .line 131
    new-instance v2, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$$inlined$apply$lambda$1;

    invoke-direct {v2, p1, p0, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;Lkotlin/jvm/functions/Function0;)V

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    .line 137
    new-instance v2, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$$inlined$apply$lambda$2;

    invoke-direct {v2, p1, p0, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$$inlined$apply$lambda$2;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;Lkotlin/jvm/functions/Function0;)V

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7e4

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    return-object p0
.end method

.method public final createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Landroid/app/Dialog;
    .locals 5
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            "ZZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "cvh"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onCancel"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLastAction()Landroid/service/controls/actions/ControlAction;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ControlsUiController"

    const-string p1, "PIN Dialog attempted but no last action is set. Will not show"

    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p3, :cond_1

    .line 64
    new-instance p3, Lkotlin/Pair;

    .line 65
    sget v1, Lcom/android/systemui/R$string;->controls_pin_wrong:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    sget v1, Lcom/android/systemui/R$string;->controls_pin_instructions_retry:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 64
    invoke-direct {p3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_1
    new-instance p3, Lkotlin/Pair;

    .line 70
    sget v1, Lcom/android/systemui/R$string;->controls_pin_verify:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    sget v1, Lcom/android/systemui/R$string;->controls_pin_instructions:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 69
    invoke-direct {p3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    :goto_0
    invoke-virtual {p3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 74
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10302d1

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 75
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 76
    sget v2, Lcom/android/systemui/R$layout;->controls_dialog_pin:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    .line 79
    new-instance v3, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$1;

    invoke-direct {v3, v0, p1, p0, p4}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$1;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;Lkotlin/jvm/functions/Function0;)V

    .line 77
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    .line 90
    new-instance v3, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$2;

    invoke-direct {v3, v0, p1, p0, p4}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$2;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;Lkotlin/jvm/functions/Function0;)V

    .line 88
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p4, 0x7e4

    .line 98
    invoke-virtual {p1, p4}, Landroid/view/Window;->setType(I)V

    const/4 p4, 0x4

    .line 99
    invoke-virtual {p1, p4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 101
    new-instance p1, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3;

    invoke-direct {p1, p0, p3, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$$inlined$apply$lambda$3;-><init>(Landroid/app/AlertDialog;IZ)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p0
.end method
