.class abstract Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
.super Ljava/lang/Thread;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field private final mSubId:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPuk:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPin:Ljava/lang/String;

    iput p4, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mSubId:I

    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Landroid/telephony/PinResult;)V
.end method

.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call supplyPukReportResult() , mSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSimPukView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1500(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mSubId:I

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPin:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->supplyPukReportPinResult(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Error result for supplyPukReportResult."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    new-instance v1, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$1;-><init>(Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supplyPukReportResult returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/PinResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    new-instance v2, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;-><init>(Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;Landroid/telephony/PinResult;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
