.class Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;
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

.field final synthetic val$result:Landroid/telephony/PinResult;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;Landroid/telephony/PinResult;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;->this$1:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;->val$result:Landroid/telephony/PinResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;->this$1:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;->val$result:Landroid/telephony/PinResult;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->onSimCheckResponse(Landroid/telephony/PinResult;)V

    return-void
.end method
