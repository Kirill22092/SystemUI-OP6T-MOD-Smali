.class Lcom/oneplus/aod/OpClockViewCtrl$1;
.super Ljava/lang/Object;
.source "OpClockViewCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpClockViewCtrl;->userActivityInAlwaysOn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpClockViewCtrl;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpClockViewCtrl;Ljava/lang/String;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/oneplus/aod/OpClockViewCtrl$1;->this$0:Lcom/oneplus/aod/OpClockViewCtrl;

    iput-object p2, p0, Lcom/oneplus/aod/OpClockViewCtrl$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl$1;->this$0:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-static {v0}, Lcom/oneplus/aod/OpClockViewCtrl;->access$000(Lcom/oneplus/aod/OpClockViewCtrl;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl$1;->val$reason:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->showFodAndCountdownToHide(Ljava/lang/String;)V

    return-void
.end method
