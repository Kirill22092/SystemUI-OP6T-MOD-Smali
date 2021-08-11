.class Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;
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

.field final synthetic val$result:Landroid/telephony/PinResult;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;Landroid/telephony/PinResult;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;->this$1:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;->val$result:Landroid/telephony/PinResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;->this$1:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;->val$result:Landroid/telephony/PinResult;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->onSimLockChangedResponse(Landroid/telephony/PinResult;)V

    return-void
.end method
