.class Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpFodIconViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFodIconViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 1

    .line 189
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 190
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->access$202(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z

    .line 191
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->access$100(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->access$100(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object p0

    const p1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 217
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->access$402(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 205
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->access$302(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .line 198
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 199
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->access$302(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    .line 210
    invoke-super {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onScreenTurningOn()V

    .line 211
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->access$302(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1

    .line 182
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    .line 183
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->access$202(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z

    .line 184
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->access$002(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 173
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 174
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->access$002(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z

    .line 175
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->access$100(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->access$100(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object p0

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method
