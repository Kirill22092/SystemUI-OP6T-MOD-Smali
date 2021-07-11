.class Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$1;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 509
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->onSimLockChangedResponse(Landroid/telephony/PinResult;)V

    return-void
.end method
