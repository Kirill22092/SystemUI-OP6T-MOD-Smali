.class Lcom/android/keyguard/KeyguardSimPinView$3$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView$3;->onSimCheckResponse(Landroid/telephony/PinResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

.field final synthetic val$result:Landroid/telephony/PinResult;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView$3;Landroid/telephony/PinResult;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:Landroid/telephony/PinResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 578
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:Landroid/telephony/PinResult;

    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$102(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 579
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$700(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$700(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:Landroid/telephony/PinResult;

    .line 584
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 582
    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 585
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:Landroid/telephony/PinResult;

    invoke-virtual {v0}, Landroid/telephony/PinResult;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$102(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 596
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSimPinView;->access$302(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 597
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardSimPinView;->access$202(Lcom/android/keyguard/KeyguardSimPinView;Z)Z

    .line 598
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    .line 599
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 601
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_6

    .line 602
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto/16 :goto_2

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSimPinView;->access$202(Lcom/android/keyguard/KeyguardSimPinView;Z)Z

    .line 606
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:Landroid/telephony/PinResult;

    invoke-virtual {v0}, Landroid/telephony/PinResult;->getType()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 612
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$100(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardSimPinView;->access$800(Lcom/android/keyguard/KeyguardSimPinView;IZ)Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;

    move-result-object v0

    .line 613
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 614
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->getDisplayMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->getType()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;I)V

    .line 619
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:Landroid/telephony/PinResult;

    invoke-virtual {v0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_5

    .line 621
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:Landroid/telephony/PinResult;

    .line 622
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    .line 621
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$900(Lcom/android/keyguard/KeyguardSimPinView;I)Landroid/app/Dialog;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 641
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v1, :cond_5

    .line 642
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_password_pin_failed:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;I)V

    .line 647
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:Landroid/telephony/PinResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " attemptsRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:Landroid/telephony/PinResult;

    .line 649
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSimPinView"

    .line 647
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_7

    .line 656
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 659
    :cond_7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$1002(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    return-void
.end method
