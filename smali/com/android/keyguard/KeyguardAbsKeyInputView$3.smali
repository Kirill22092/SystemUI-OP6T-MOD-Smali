.class Lcom/android/keyguard/KeyguardAbsKeyInputView$3;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

.field final synthetic val$password:Lcom/android/internal/widget/LockscreenCredential;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iput p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->val$userId:I

    iput-object p3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$900(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 345
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method

.method public onChecked(ZI)V
    .locals 4

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChecked, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAbsKeyInputView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$500(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "lock_unlock_failed"

    const-string v3, "1"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportMDMEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$700(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$800(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    :cond_1
    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 329
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-nez p1, :cond_3

    .line 331
    iget p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->val$userId:I

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, p2, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$600(Lcom/android/keyguard/KeyguardAbsKeyInputView;IZIZ)V

    .line 334
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method

.method public onEarlyMatched()V
    .locals 4

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEarlyMatched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->val$userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAbsKeyInputView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$300(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$400(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v0

    .line 302
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$500(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "lock_unlock_success"

    invoke-interface {v2, v3, v1, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportMDMEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->val$userId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$600(Lcom/android/keyguard/KeyguardAbsKeyInputView;IZIZ)V

    .line 307
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method
