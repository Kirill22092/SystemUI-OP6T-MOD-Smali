.class public Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;
.source "CameraTrigger.java"


# instance fields
.field private mCameraCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraOpenBack:Z

.field private mCameraOpenFront:Z

.field private mCameraOpenId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    new-instance p2, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger$1;

    invoke-direct {p2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger$1;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;)V

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->isFrontCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraOpenId:I

    return p1
.end method

.method static synthetic access$302(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraOpenBack:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->checkTrigger(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method private checkTrigger(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraOpenBack:Z

    const-string v1, "camera"

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->onTriggerChanged(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraOpenBack:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->onTriggerChanged(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isFrontCamera(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v0, "isFrontCamera occur error"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dumpDetail(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->dumpDetail(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cameraOpenBack="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraOpenBack:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected getCategories()[Ljava/lang/String;
    .locals 0

    const-string p0, "camera"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentCategory()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraOpenBack:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mIsDelayed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraOpenId:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraOpenFront:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mIsDelayed:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraOpenId:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "front camera"

    return-object p0

    :cond_3
    :goto_1
    const-string p0, "camera"

    return-object p0
.end method

.method public getMdmLabel()Ljava/lang/String;
    .locals 0

    const-string p0, "camera"

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getTriggerId()Ljava/lang/String;
    .locals 0

    const-string p0, "camera"

    return-object p0
.end method

.method public init()V
    .locals 2

    invoke-super {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->init()V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public isActiveInner()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraOpenBack:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;->mCameraOpenFront:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
