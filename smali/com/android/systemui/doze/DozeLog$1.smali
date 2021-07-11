.class Lcom/android/systemui/doze/DozeLog$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeLog;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeLog;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeLog;->traceEmergencyCall()V

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeLog;->traceScreenOff(I)V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeLog;->traceKeyguardBouncerChanged(Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeLog;->traceKeyguard(Z)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog$1;->this$0:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeLog;->traceScreenOn()V

    return-void
.end method
