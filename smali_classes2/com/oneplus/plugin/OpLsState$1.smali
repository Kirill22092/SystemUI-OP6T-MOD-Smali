.class Lcom/oneplus/plugin/OpLsState$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpLsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/plugin/OpLsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/plugin/OpLsState;


# direct methods
.method constructor <init>(Lcom/oneplus/plugin/OpLsState;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/oneplus/plugin/OpLsState$1;->this$0:Lcom/oneplus/plugin/OpLsState;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 4

    .line 153
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState$1;->this$0:Lcom/oneplus/plugin/OpLsState;

    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {v2}, Lcom/oneplus/plugin/OpBaseCtrl;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {v2, p1}, Lcom/oneplus/plugin/OpBaseCtrl;->onFinishedGoingToSleep(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 4

    .line 173
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState$1;->this$0:Lcom/oneplus/plugin/OpLsState;

    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {v2}, Lcom/oneplus/plugin/OpBaseCtrl;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {v2, p1}, Lcom/oneplus/plugin/OpBaseCtrl;->onKeyguardBouncerChanged(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 4

    .line 182
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState$1;->this$0:Lcom/oneplus/plugin/OpLsState;

    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {v2}, Lcom/oneplus/plugin/OpBaseCtrl;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-virtual {v2, p1}, Lcom/oneplus/plugin/OpBaseCtrl;->onKeyguardVisibilityChanged(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/oneplus/plugin/OpLsState$1;->this$0:Lcom/oneplus/plugin/OpLsState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/plugin/OpLsState;->access$102(Lcom/oneplus/plugin/OpLsState;Z)Z

    .line 163
    iget-object v0, p0, Lcom/oneplus/plugin/OpLsState$1;->this$0:Lcom/oneplus/plugin/OpLsState;

    invoke-static {v0, v1}, Lcom/oneplus/plugin/OpLsState;->access$202(Lcom/oneplus/plugin/OpLsState;Z)Z

    .line 164
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState$1;->this$0:Lcom/oneplus/plugin/OpLsState;

    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {v2}, Lcom/oneplus/plugin/OpBaseCtrl;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    invoke-virtual {v2}, Lcom/oneplus/plugin/OpBaseCtrl;->onScreenTurnedOff()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/oneplus/plugin/OpLsState$1;->this$0:Lcom/oneplus/plugin/OpLsState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/plugin/OpLsState;->access$102(Lcom/oneplus/plugin/OpLsState;Z)Z

    .line 144
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState$1;->this$0:Lcom/oneplus/plugin/OpLsState;

    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {v2}, Lcom/oneplus/plugin/OpBaseCtrl;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {v2, p1}, Lcom/oneplus/plugin/OpBaseCtrl;->onStartedGoingToSleep(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/oneplus/plugin/OpLsState$1;->this$0:Lcom/oneplus/plugin/OpLsState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/plugin/OpLsState;->access$102(Lcom/oneplus/plugin/OpLsState;Z)Z

    .line 133
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState$1;->this$0:Lcom/oneplus/plugin/OpLsState;

    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v2}, Lcom/oneplus/plugin/OpBaseCtrl;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    invoke-virtual {v2}, Lcom/oneplus/plugin/OpBaseCtrl;->onStartedWakingUp()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
