.class Lcom/android/keyguard/KeyguardSecurityContainer$3;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$reportUnlockAttempt$0()V
    .locals 2

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method


# virtual methods
.method public dismiss(ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$3;->dismiss(ZIZ)V

    return-void
.end method

.method public dismiss(ZIZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$100(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->dismiss(ZIZ)Z

    return-void
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0
.end method

.method public getEmergencyPanel()Lcom/oneplus/keyguard/OpEmergencyPanel;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$1100(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/oneplus/keyguard/OpEmergencyPanel;

    move-result-object p0

    return-object p0
.end method

.method public hideSecurityIcon()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$1000(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    return-void
.end method

.method public onCancelClicked()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$100(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onCancelClicked()V

    return-void
.end method

.method public onUserInput()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$200(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->cancelFaceAuth()V

    return-void
.end method

.method public reportMDMEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pass"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$900(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_0

    const-string p2, "password"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$900(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    const-string p2, "pin"

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$100(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->reportMDMEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportUnlockAttempt(IZI)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x40

    if-eqz p2, :cond_0

    const/4 p3, 0x2

    invoke-static {v1, p3}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p3}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$200(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->clearFailedUnlockAttempts(Z)V

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p3}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$400(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v0, 0x0

    const-string v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-static {p3, v1, v0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p3}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$500(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    sget-object p1, Lcom/android/keyguard/-$$Lambda$KeyguardSecurityContainer$3$OMSiLPoAPJCjVWlQcH6dkkVRIyE;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardSecurityContainer$3$OMSiLPoAPJCjVWlQcH6dkkVRIyE;

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0, p1, p3}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$600(Lcom/android/keyguard/KeyguardSecurityContainer;II)V

    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$700(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object p0

    new-instance p1, Landroid/metrics/LogMaker;

    const/16 p3, 0xc5

    invoke-direct {p1, p3}, Landroid/metrics/LogMaker;-><init>(I)V

    if-eqz p2, :cond_1

    const/16 p3, 0xa

    goto :goto_1

    :cond_1
    const/16 p3, 0xb

    :goto_1
    invoke-virtual {p1, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$800()Lcom/android/internal/logging/UiEventLogger;

    move-result-object p0

    if-eqz p2, :cond_2

    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_PASSWORD_SUCCESS:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_PASSWORD_FAILURE:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    :goto_2
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$100(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->reset()V

    return-void
.end method

.method public tryToStartFaceLockFromBouncer()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$100(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->tryToStartFaceLockFromBouncer()V

    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$100(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$100(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method
