.class Lcom/android/keyguard/KeyguardSimPukView$3;
.super Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView;->updateSim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Landroid/telephony/PinResult;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    new-instance v1, Lcom/android/keyguard/KeyguardSimPukView$3$1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardSimPukView$3$1;-><init>(Lcom/android/keyguard/KeyguardSimPukView$3;Landroid/telephony/PinResult;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
