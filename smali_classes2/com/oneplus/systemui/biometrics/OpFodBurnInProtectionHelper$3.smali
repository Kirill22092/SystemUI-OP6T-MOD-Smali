.class Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$3;
.super Ljava/lang/Object;
.source "OpFodBurnInProtectionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$3;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$3;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->access$200(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)Z

    move-result v0

    .line 231
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$3;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->access$300(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)Z

    move-result v1

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checking: isAodMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", needProtection= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpFodBurnInProtectionHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$3;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->access$000(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 245
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$3;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->access$100(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V

    .line 247
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$3;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->access$400(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "checking: not needed"

    .line 237
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$3;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->access$400(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V

    return-void
.end method
