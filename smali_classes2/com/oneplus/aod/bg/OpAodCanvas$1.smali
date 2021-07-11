.class Lcom/oneplus/aod/bg/OpAodCanvas$1;
.super Ljava/lang/Object;
.source "OpAodCanvas.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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

    .line 218
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$1;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas$1;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$000(Lcom/oneplus/aod/bg/OpAodCanvas;)Z

    move-result v0

    .line 222
    iget-object v1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$1;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget p1, p1, v2

    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-static {v1, p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$002(Lcom/oneplus/aod/bg/OpAodCanvas;Z)Z

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check: light= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas$1;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$000(Lcom/oneplus/aod/bg/OpAodCanvas;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpAodCanvas"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$1;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$200(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas$1;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$100(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 225
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$1;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p1, v2}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$302(Lcom/oneplus/aod/bg/OpAodCanvas;Z)Z

    .line 226
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$1;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$400(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/os/PowerManager;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$1;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$400(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_3

    .line 227
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$1;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$500(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/oneplus/aod/bg/OpAodLowLightMask;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 228
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$1;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$500(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/oneplus/aod/bg/OpAodLowLightMask;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas$1;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$000(Lcom/oneplus/aod/bg/OpAodCanvas;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :cond_2
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$1;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$600(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/oneplus/aod/bg/IBgPaint;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 231
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas$1;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$600(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/oneplus/aod/bg/IBgPaint;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/aod/bg/IBgPaint;->userActivityInAlwaysOn()V

    :cond_3
    return-void
.end method
