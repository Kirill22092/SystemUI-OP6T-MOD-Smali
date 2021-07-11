.class Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$1;
.super Landroid/os/Handler;
.source "OpFodBurnInProtectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;Landroid/os/Looper;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 62
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->handleStartSchedule(Ljava/lang/String;)V

    return-void
.end method
