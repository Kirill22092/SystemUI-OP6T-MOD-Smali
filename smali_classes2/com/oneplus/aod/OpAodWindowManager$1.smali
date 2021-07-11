.class Lcom/oneplus/aod/OpAodWindowManager$1;
.super Landroid/os/Handler;
.source "OpAodWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodWindowManager;->initHandler(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodWindowManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodWindowManager;Landroid/os/Looper;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager$1;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 112
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const-string v1, "AodWindowManager"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$1;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodWindowManager;->access$300(Lcom/oneplus/aod/OpAodWindowManager;)V

    goto :goto_0

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start handleStopDozing; mDozing = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager$1;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodWindowManager;->access$000(Lcom/oneplus/aod/OpAodWindowManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$1;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodWindowManager;->access$200(Lcom/oneplus/aod/OpAodWindowManager;)V

    goto :goto_0

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start handleStartDozing; mDozing = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager$1;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodWindowManager;->access$000(Lcom/oneplus/aod/OpAodWindowManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$1;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodWindowManager;->access$100(Lcom/oneplus/aod/OpAodWindowManager;)V

    :goto_0
    return-void
.end method
