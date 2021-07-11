.class Lcom/oneplus/anim/OpGraphLight$4;
.super Ljava/lang/Object;
.source "OpGraphLight.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/anim/OpGraphLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/anim/OpGraphLight;


# direct methods
.method constructor <init>(Lcom/oneplus/anim/OpGraphLight;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$4;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 905
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 906
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 910
    invoke-static {}, Lcom/oneplus/anim/OpGraphLight;->access$1800()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 911
    invoke-static {}, Lcom/oneplus/anim/OpGraphLight;->access$1900()I

    move-result v0

    goto :goto_0

    .line 912
    :cond_0
    invoke-static {}, Lcom/oneplus/anim/OpGraphLight;->access$1800()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/oneplus/anim/OpGraphLight;->access$2000()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 913
    invoke-static {}, Lcom/oneplus/anim/OpGraphLight;->access$1800()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {}, Lcom/oneplus/anim/OpGraphLight;->access$2000()F

    move-result v1

    invoke-static {}, Lcom/oneplus/anim/OpGraphLight;->access$1800()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {}, Lcom/oneplus/anim/OpGraphLight;->access$2100()I

    move-result v1

    invoke-static {}, Lcom/oneplus/anim/OpGraphLight;->access$1900()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {}, Lcom/oneplus/anim/OpGraphLight;->access$1900()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 915
    :cond_1
    invoke-static {}, Lcom/oneplus/anim/OpGraphLight;->access$2100()I

    move-result v0

    .line 918
    :goto_0
    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight$4;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v1}, Lcom/oneplus/anim/OpGraphLight;->access$1300(Lcom/oneplus/anim/OpGraphLight;)I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/anim/OpGraphLight$4;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v2}, Lcom/oneplus/anim/OpGraphLight;->access$1300(Lcom/oneplus/anim/OpGraphLight;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 919
    iget-object v2, p0, Lcom/oneplus/anim/OpGraphLight$4;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v2}, Lcom/oneplus/anim/OpGraphLight;->access$1300(Lcom/oneplus/anim/OpGraphLight;)I

    move-result v2

    if-eq v2, v0, :cond_2

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lux "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OpGraphLight"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$4;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p1, v0}, Lcom/oneplus/anim/OpGraphLight;->access$1302(Lcom/oneplus/anim/OpGraphLight;I)I

    .line 923
    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$4;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p1}, Lcom/oneplus/anim/OpGraphLight;->access$000(Lcom/oneplus/anim/OpGraphLight;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$4;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p1}, Lcom/oneplus/anim/OpGraphLight;->access$000(Lcom/oneplus/anim/OpGraphLight;)Landroid/widget/ImageView;

    move-result-object p1

    instance-of p1, p1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$4;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-virtual {p1}, Lcom/oneplus/anim/OpGraphLight;->isFrontCameraAnimOn()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$4;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p1}, Lcom/oneplus/anim/OpGraphLight;->access$1600(Lcom/oneplus/anim/OpGraphLight;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 924
    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$4;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p1}, Lcom/oneplus/anim/OpGraphLight;->access$000(Lcom/oneplus/anim/OpGraphLight;)Landroid/widget/ImageView;

    move-result-object p1

    check-cast p1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$4;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p0}, Lcom/oneplus/anim/OpGraphLight;->access$1300(Lcom/oneplus/anim/OpGraphLight;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->setAlpha(I)V

    :cond_2
    return-void
.end method
