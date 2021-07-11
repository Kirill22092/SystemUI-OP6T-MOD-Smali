.class Lcom/oneplus/systemui/util/OpMdmLogger$1;
.super Ljava/lang/Object;
.source "OpMdmLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$extraData:Ljava/util/HashMap;

.field final synthetic val$mdmData:Ljava/util/Map;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/HashMap;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$mdmData:Ljava/util/Map;

    iput-object p3, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$extraData:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$tag:Ljava/lang/String;

    const-string v1, "lock_unlock_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->access$000()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->access$100()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 165
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    :cond_0
    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->access$000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$mdmData:Ljava/util/Map;

    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "finger_sensor_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_1
    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log: mdmData= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$mdmData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdmLogger"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_2
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->access$100()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$mdmData:Ljava/util/Map;

    iget-object p0, p0, Lcom/oneplus/systemui/util/OpMdmLogger$1;->val$extraData:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3, p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
