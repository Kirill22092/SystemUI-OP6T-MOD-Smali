.class Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;
.super Ljava/lang/Object;
.source "OpFingerprintConfig.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/onlineconfig/OpFingerprintConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnlineConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/onlineconfig/OpFingerprintConfig;


# direct methods
.method private constructor <init>(Lcom/oneplus/onlineconfig/OpFingerprintConfig;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;->this$0:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/onlineconfig/OpFingerprintConfig;Lcom/oneplus/onlineconfig/OpFingerprintConfig$1;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;-><init>(Lcom/oneplus/onlineconfig/OpFingerprintConfig;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "KeyguardFingerprintConfig"

    const-string v1, "Receive online config update"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;->this$0:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    invoke-virtual {p0, p1}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method
