.class Lcom/oneplus/battery/OpChargingAnimationControllerImpl$4;
.super Landroid/database/ContentObserver;
.source "OpChargingAnimationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->registerDockOnWirelessObserver(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$4;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$4;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-virtual {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isDockOnWireless()Z

    move-result v0

    iput-boolean v0, p1, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mDockOnWireless:Z

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$4;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDockOnWireless state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$4;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mDockOnWireless:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
