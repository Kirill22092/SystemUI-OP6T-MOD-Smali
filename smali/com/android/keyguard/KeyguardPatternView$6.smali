.class Lcom/android/keyguard/KeyguardPatternView$6;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    .line 982
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$6;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    .line 985
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 986
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "SecurityPatternView"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView$6;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardPatternView;->access$3300(Lcom/android/keyguard/KeyguardPatternView;)V

    return-void
.end method
