.class Lcom/oneplus/aod/OpAodWindowManager$2;
.super Landroid/content/BroadcastReceiver;
.source "OpAodWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OpAodWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodWindowManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodWindowManager;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager$2;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.oneplus.intent.action.mdm_provider_ready"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AodWindowManager"

    const-string p2, "Receive MDM provider ready"

    .line 144
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$2;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodWindowManager;->access$400(Lcom/oneplus/aod/OpAodWindowManager;)V

    :cond_0
    return-void
.end method
