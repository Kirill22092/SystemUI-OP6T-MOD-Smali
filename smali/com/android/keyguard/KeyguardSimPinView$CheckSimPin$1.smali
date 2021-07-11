.class Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 499
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->onSimCheckResponse(Landroid/telephony/PinResult;)V

    return-void
.end method
