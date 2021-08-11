.class Lcom/oneplus/util/OpReverseWirelessChargeUtils$2;
.super Lcom/oneplus/util/SystemSetting;
.source "OpReverseWirelessChargeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/util/OpReverseWirelessChargeUtils;->init(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 0

    iput-object p5, p0, Lcom/oneplus/util/OpReverseWirelessChargeUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/util/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$handleValueChanged$0(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->isEnabled()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->showNotification(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 2

    invoke-static {}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mModeSettingChanged: value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", enabled="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->isEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", discharging="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->access$200()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->access$100()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/util/OpReverseWirelessChargeUtils$2;->val$context:Landroid/content/Context;

    new-instance p2, Lcom/oneplus/util/-$$Lambda$OpReverseWirelessChargeUtils$2$Gxr5JYNhjCCzZbVRg7uTqs3E_2g;

    invoke-direct {p2, p0}, Lcom/oneplus/util/-$$Lambda$OpReverseWirelessChargeUtils$2$Gxr5JYNhjCCzZbVRg7uTqs3E_2g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
