.class Lcom/android/systemui/doze/DozeSensors$1;
.super Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;
.source "DozeSensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeSensors;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/doze/DozeHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    return-void
.end method


# virtual methods
.method public onProximityResult(I)V
    .locals 3

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProximityResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeSensors"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$100(Lcom/android/systemui/doze/DozeSensors;)I

    move-result v0

    .line 237
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v2, p1}, Lcom/android/systemui/doze/DozeSensors;->access$102(Lcom/android/systemui/doze/DozeSensors;I)I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 239
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$200(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->getCurrentState()I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 240
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$200(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->resetCurrentState()V

    const-string p1, "pulse from pocket"

    .line 241
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object p0

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {p0, p1, v1, v1, v0}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IFF[F)V

    :cond_0
    return-void
.end method
