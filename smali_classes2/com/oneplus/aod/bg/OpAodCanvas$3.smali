.class Lcom/oneplus/aod/bg/OpAodCanvas$3;
.super Ljava/lang/Object;
.source "OpAodCanvas.java"

# interfaces
.implements Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/bg/OpAodCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/bg/OpAodCanvas;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/bg/OpAodCanvas;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$3;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapHandleDone(ZZLcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBitmapHandleDone: enabled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contentChange= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", data= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpAodCanvas"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$3;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$800(Lcom/oneplus/aod/bg/OpAodCanvas;)V

    :cond_2
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$3;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$900(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    const-string v0, "aod_clock_style"

    invoke-static {p1, v0, v2, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_3
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas$3;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p0, v1}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$1000(Lcom/oneplus/aod/bg/OpAodCanvas;Z)Lcom/oneplus/aod/bg/IBgPaint;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$1100(Lcom/oneplus/aod/bg/OpAodCanvas;Lcom/oneplus/aod/bg/IBgPaint;Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V

    return-void
.end method
