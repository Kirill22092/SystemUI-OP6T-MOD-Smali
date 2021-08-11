.class Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "CameraTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->access$500(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraClosed: cameraId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;

    invoke-static {v0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->access$100(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->access$302(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;Z)Z

    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;

    invoke-static {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->access$400(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;Z)V

    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->access$000(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOpened: cameraId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", packageId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;

    invoke-static {p2, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->access$100(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;

    invoke-static {v0, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->access$202(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;I)I

    iget-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->access$302(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;

    invoke-static {v0, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->access$302(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;Z)Z

    :goto_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;

    invoke-static {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->access$400(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;Z)V

    return-void
.end method
