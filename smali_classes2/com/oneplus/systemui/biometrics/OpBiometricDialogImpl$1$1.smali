.class Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1$1;
.super Ljava/lang/Object;
.source "OpBiometricDialogImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1;->onFingerprintEventCallback(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1$1;->this$1:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1$1;->this$1:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDimForFingerprintAcquired()V

    :cond_0
    return-void
.end method
