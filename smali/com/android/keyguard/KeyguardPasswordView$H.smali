.class final Lcom/android/keyguard/KeyguardPasswordView$H;
.super Landroid/os/Handler;
.source "KeyguardPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPasswordView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardPasswordView;)V
    .locals 0

    .line 940
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$H;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    .line 941
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 946
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "KeyguardPasswordView"

    const-string v0, "H.UPDATE_EMERGENCY_BUTTON"

    .line 948
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$H;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardPasswordView;->access$1300(Lcom/android/keyguard/KeyguardPasswordView;)V

    .line 950
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView$H;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardPasswordView;->access$1100(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
