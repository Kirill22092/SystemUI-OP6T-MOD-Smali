.class Lcom/android/keyguard/KeyguardSimPukView$3$1;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView$3;->onSimLockChangedResponse(Landroid/telephony/PinResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

.field final synthetic val$result:Landroid/telephony/PinResult;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView$3;Landroid/telephony/PinResult;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 595
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1600(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1600(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    .line 600
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 598
    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 601
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    invoke-virtual {v0}, Landroid/telephony/PinResult;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 602
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    .line 603
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 604
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$402(Lcom/android/keyguard/KeyguardSimPukView;I)I

    .line 605
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardSimPukView;->access$302(Lcom/android/keyguard/KeyguardSimPukView;Z)Z

    .line 606
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_6

    .line 608
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 607
    invoke-interface {v0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_2

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSimPukView;->access$302(Lcom/android/keyguard/KeyguardSimPukView;Z)Z

    .line 612
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    invoke-virtual {v0}, Landroid/telephony/PinResult;->getType()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 619
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v1, :cond_3

    .line 620
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    .line 621
    invoke-virtual {v4}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v4

    .line 620
    invoke-static {v0, v4, v2}, Lcom/android/keyguard/KeyguardSimPukView;->access$1400(Lcom/android/keyguard/KeyguardSimPukView;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;I)V

    .line 625
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    invoke-virtual {v0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_5

    .line 627
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    .line 628
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    .line 627
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$1700(Lcom/android/keyguard/KeyguardSimPukView;I)Landroid/app/Dialog;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 645
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v1, :cond_5

    .line 646
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_password_puk_failed:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;I)V

    .line 651
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    .line 653
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSimPukView"

    .line 651
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1800(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 656
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1902(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    return-void
.end method
