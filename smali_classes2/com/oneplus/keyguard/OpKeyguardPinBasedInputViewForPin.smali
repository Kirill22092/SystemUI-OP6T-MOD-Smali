.class public abstract Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "OpKeyguardPinBasedInputViewForPin.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static TAG:Ljava/lang/String; = "OpKeyguardPinBasedInputViewForPin"


# instance fields
.field private mButton0:Landroid/view/View;

.field private mButton1:Landroid/view/View;

.field private mButton2:Landroid/view/View;

.field private mButton3:Landroid/view/View;

.field private mButton4:Landroid/view/View;

.field private mButton5:Landroid/view/View;

.field private mButton6:Landroid/view/View;

.field private mButton7:Landroid/view/View;

.field private mButton8:Landroid/view/View;

.field private mButton9:Landroid/view/View;

.field private mDeleteButton:Landroid/widget/TextView;

.field private mOkButton:Landroid/view/View;

.field protected mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onUserInput()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->verifyPasswordAndUnlock()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->verifyPasswordAndUnlock()V

    return-void
.end method

.method private varargs createInstanceWithArgs(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p2, :cond_0

    .line 322
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    .line 323
    :cond_0
    sget-object p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->TAG:Ljava/lang/String;

    const-string p1, "invalide class name "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    .line 328
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 329
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 330
    invoke-virtual {p1, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 332
    sget-object p3, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createInstanceWithArgs fail:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method private createLiftToActivateListener()Landroid/view/View$OnHoverListener;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 312
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 313
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "com.android.keyguard.LiftToActivateListener"

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->createInstanceWithArgs(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 314
    instance-of v0, p0, Landroid/view/View$OnHoverListener;

    if-eqz v0, :cond_0

    .line 315
    check-cast p0, Landroid/view/View$OnHoverListener;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private performClick(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method private performNumberClick(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 172
    :pswitch_0
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton9:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton8:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 166
    :pswitch_2
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton7:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 163
    :pswitch_3
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton6:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 160
    :pswitch_4
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton5:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 157
    :pswitch_5
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton4:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 154
    :pswitch_6
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton3:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 151
    :pswitch_7
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton2:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 148
    :pswitch_8
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton1:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 145
    :pswitch_9
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton0:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    .line 132
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pin:I

    return p0

    .line 128
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_user_request:I

    return p0

    .line 126
    :cond_1
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_device_admin:I

    return p0

    .line 124
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pin:I

    return p0

    .line 122
    :cond_3
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_restart_pin:I

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 292
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x10403f6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 189
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    .line 190
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 195
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    new-instance v1, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$1;

    invoke-direct {v1, p0}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$1;-><init>(Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->setUserActivityListener(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$UserActivityListener;)V

    .line 210
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAutoCheckPinEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    sget v0, Lcom/android/systemui/R$id;->key_enter:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 214
    new-instance v1, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$2;

    invoke-direct {v1, p0}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$2;-><init>(Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->createLiftToActivateListener()Landroid/view/View$OnHoverListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 231
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->deleteOrCancel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    .line 232
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$3;

    invoke-direct {v1, p0}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$3;-><init>(Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$4;

    invoke-direct {v1, p0}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$4;-><init>(Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    new-instance v1, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$5;

    invoke-direct {v1, p0}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin$5;-><init>(Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->setTextChangeListener(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$onTextChangedListerner;)V

    .line 267
    sget v0, Lcom/android/systemui/R$id;->key0:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton0:Landroid/view/View;

    .line 268
    sget v0, Lcom/android/systemui/R$id;->key1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton1:Landroid/view/View;

    .line 269
    sget v0, Lcom/android/systemui/R$id;->key2:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton2:Landroid/view/View;

    .line 270
    sget v0, Lcom/android/systemui/R$id;->key3:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton3:Landroid/view/View;

    .line 271
    sget v0, Lcom/android/systemui/R$id;->key4:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton4:Landroid/view/View;

    .line 272
    sget v0, Lcom/android/systemui/R$id;->key5:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton5:Landroid/view/View;

    .line 273
    sget v0, Lcom/android/systemui/R$id;->key6:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton6:Landroid/view/View;

    .line 274
    sget v0, Lcom/android/systemui/R$id;->key7:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton7:Landroid/view/View;

    .line 275
    sget v0, Lcom/android/systemui/R$id;->key8:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton8:Landroid/view/View;

    .line 276
    sget v0, Lcom/android/systemui/R$id;->key9:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mButton9:Landroid/view/View;

    .line 278
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 279
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 284
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 285
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 98
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 99
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    return v1

    :cond_0
    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 102
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    return v1

    :cond_1
    const/4 v0, 0x7

    if-lt p1, v0, :cond_2

    const/16 v2, 0x10

    if-gt p1, v2, :cond_2

    sub-int/2addr p1, v0

    .line 107
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->performNumberClick(I)V

    return v1

    :cond_2
    const/16 v0, 0x90

    if-lt p1, v0, :cond_3

    const/16 v2, 0x99

    if-gt p1, v2, :cond_3

    sub-int/2addr p1, v0

    .line 112
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->performNumberClick(I)V

    return v1

    .line 115
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 67
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->reset(ZZ)V

    return-void
.end method

.method protected resetState()V
    .locals 1

    .line 77
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
