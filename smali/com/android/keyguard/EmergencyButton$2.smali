.class Lcom/android/keyguard/EmergencyButton$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/EmergencyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    const-string v0, "EmergencyButton"

    const-string v1, "onBootCompleted"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$100(Lcom/android/keyguard/EmergencyButton;)V

    .line 131
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {p1}, Lcom/android/keyguard/EmergencyButton;->access$100(Lcom/android/keyguard/EmergencyButton;)V

    .line 123
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method public onServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .locals 0

    .line 137
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {p1}, Lcom/android/keyguard/EmergencyButton;->access$100(Lcom/android/keyguard/EmergencyButton;)V

    .line 138
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method public onSimStateChanged(III)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {p1}, Lcom/android/keyguard/EmergencyButton;->access$100(Lcom/android/keyguard/EmergencyButton;)V

    .line 117
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method
