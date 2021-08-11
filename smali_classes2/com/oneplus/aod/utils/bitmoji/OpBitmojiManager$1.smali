.class Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpBitmojiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onUserUnlocked$0(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 0

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->access$100(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    return-void
.end method


# virtual methods
.method public onUserUnlocked()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->access$000(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->access$000(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/-$$Lambda$OpBitmojiManager$1$MU0tnckoq4d-yBEtL4wGrDLu-_g;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/utils/bitmoji/-$$Lambda$OpBitmojiManager$1$MU0tnckoq4d-yBEtL4wGrDLu-_g;-><init>(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p0, "OpBitmojiManager"

    const-string v0, "onUserUnlocked: handler is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
