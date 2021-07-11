.class Lcom/oneplus/keyguard/OpKeyguardClockInfoView$1;
.super Landroid/database/ContentObserver;
.source "OpKeyguardClockInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpKeyguardClockInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Landroid/os/Handler;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .line 99
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 100
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    .line 101
    invoke-static {v0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$100(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    move v3, v2

    .line 100
    :cond_0
    invoke-static {v0, v3}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$002(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Z)Z

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContentObserver selfChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mAllowShowSensitiveData:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$000(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpKeyguardClockInfoView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$200(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Lcom/android/keyguard/KeyguardAssistantView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$200(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Lcom/android/keyguard/KeyguardAssistantView;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$000(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardAssistantView;->setHideSensitiveData(Z)V

    :cond_1
    return-void
.end method
