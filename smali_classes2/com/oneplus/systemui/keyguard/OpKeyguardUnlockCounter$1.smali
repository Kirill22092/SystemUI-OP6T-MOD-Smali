.class Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpKeyguardUnlockCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$1;->this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onShuttingDown()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$1;->this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->reportEvent(ZJ)V

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$1;->this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    invoke-static {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->access$200(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$1;->this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    invoke-static {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->access$200(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$1;->this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    invoke-static {v0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->access$000(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$1;->this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    invoke-static {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->access$100(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V

    :cond_0
    return-void
.end method
